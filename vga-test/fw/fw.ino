// VGA timing generator.
//
// Output HSYNC, VSYNC, HVIS and VVIS signals.
//
// NOTE: The VSYNC and VIS signals are generated in the middle of a scan line
// and need to be synchronised with the HSYNC signal by means of an external
// D-type flip-flop.

// Pin assignment - Arduino Nano
const int HSYNC_PIN   = 5;    // =OC0B, fixed by hardware
const int HVIS_PIN    = 3;    // =OC2B, fixed by hardware
const int VSYNC_PIN   = 4;
const int VVIS_PIN    = 2;

#if 0
// 640x480 VESA with slightly wrong dot clock
const double dot_clock_freq       = 32;               // MHz
const int h_visible_area          = 640;              // pixels
const int h_front_porch           = 16;               // pixels
const int h_sync_width            = 64;               // pixels
const int h_back_porch            = 120;              // pixels
const int h_polarity              = -1;               // sign

const int v_visible_area          = 480;              // lines
const int v_front_porch           = 1;                // lines
const int v_sync_width            = 3;                // lines
const int v_back_porch            = 16;               // lines
const int v_polarity              = -1;               // sign
#endif

#if 0
// 800x600 SVGA
const double dot_clock_freq       = 40;               // MHz
const int h_visible_area          = 800;              // pixels
const int h_front_porch           = 40;               // pixels
const int h_sync_width            = 128;              // pixels
const int h_back_porch            = 88;               // pixels
const int h_polarity              = +1;               // sign

const int v_visible_area          = 600;              // lines
const int v_front_porch           = 1;                // lines
const int v_sync_width            = 4;                // lines
const int v_back_porch            = 23;               // lines
const int v_polarity              = +1;               // sign
#endif

#if 1
// 1024x768 XGA with slightly odd dot clock
const double dot_clock_freq       = 64;               // MHz
const int h_visible_area          = 1024;             // pixels
const int h_front_porch           = 24;               // pixels
const int h_sync_width            = 136;              // pixels
const int h_back_porch            = 160;              // pixels
const int h_polarity              = -1;               // sign

const int v_visible_area          = 768;              // lines
const int v_front_porch           = 3;                // lines
const int v_sync_width            = 6;                // lines
const int v_back_porch            = 29;               // lines
const int v_polarity              = -1;               // sign
#endif

// Derived timings
const double h_visible_area_t     = h_visible_area / dot_clock_freq;  // µs
const double h_front_porch_t      = h_front_porch / dot_clock_freq;   // µs
const double h_sync_width_t       = h_sync_width / dot_clock_freq;    // µs
const double h_back_porch_t       = h_back_porch / dot_clock_freq;    // µs

const double hvis_inactive_width  =
    h_sync_width_t + h_front_porch_t + h_back_porch_t;
const double hvis_inactive_offset =
    0.5 * (h_back_porch_t - h_front_porch_t);
const double whole_line           =
    h_visible_area_t + h_front_porch_t + h_sync_width_t + h_back_porch_t;
const int whole_frame             =
    v_visible_area + v_front_porch + v_sync_width + v_back_porch;

// Counter timer
const double timer_freq           = 16;               // MHz

// Called around the middle of the HVIS inactive pulse. The delay between the
// interrupt flag being set and the pin actually changing is slightly
// non-deterministic since the current instruction needs to finish processing.
// We intentionally allow for slop by outputting signals for the *next* line and
// requiring that the signals be synchronised with the following HSYNC pulse.
static int row_counter = 0;
ISR(TIMER2_OVF_vect) {
  ++row_counter;

  switch(row_counter) {
    case v_front_porch:
      digitalWrite(VSYNC_PIN, (v_polarity < 0) ? LOW : HIGH);
      break;
    case v_front_porch + v_sync_width:
      digitalWrite(VSYNC_PIN, (v_polarity < 0) ? HIGH : LOW);
      break;
    case v_front_porch + v_sync_width + v_back_porch:
      digitalWrite(VVIS_PIN, HIGH);
      break;
    case whole_frame:
      digitalWrite(VVIS_PIN, LOW);
      PORTD &= ~_BV(PORTD2);
      row_counter = 0;
      break;
  }
}

void setup() {
  pinMode(HSYNC_PIN, OUTPUT);
  pinMode(HVIS_PIN, OUTPUT);
  pinMode(VSYNC_PIN, OUTPUT);
  pinMode(VVIS_PIN, OUTPUT);

  // Reset all timers and halt them
  GTCCR = _BV(TSM) | _BV(PSRASY) | _BV(PSRSYNC);

  // Timers 0 and 2:
  // We use phase correct operation so the counter counts up from BOTTOM to TOP
  // and back down. Both BOTTOM and TOP are present for one counter cycle so the
  // number of cycles for each period is 2*(TOP-BOTTOM).
  //
  // BOTTOM is 0 and TOP and so the period, T, is 2*TOP/f where f is the counter
  // frequency. Therefore:
  const int top = whole_line * timer_freq / 2.;
  OCR0A = top;
  OCR2A = top;

  // We use the phase-correct PWM mode so the pulse width will be 2*COMPARE/f
  // and so, COMPARE = width * f / 2.

  // Timer 0:

  // Set HSYNC pulse width,
  OCR0B = (int)(h_sync_width_t * timer_freq / 2.);

  // Phase correct PWM, TOP = OCR0A, internal clock, no pre-scaling,
  // OC0B pin is RESET when match on counting UP and SET when match on counting
  // DOWN for +ve HSYNC polarity. (Opposite for -ve.)
  TCCR0A = _BV(COM0B1) | _BV(WGM00) | ((h_polarity < 0) ? _BV(COM2B0) : 0);
  TCCR0B = _BV(WGM02) | _BV(CS00);

  // Timer 2:

  // We set the display inactive pulse width because that pulse is nearly
  // aligned to HSYNC already.
  OCR2B = (int)(hvis_inactive_width * timer_freq / 2.);

  // Phase correct PWM, TOP = OCR2A, internal clock, no pre-scaling,
  // OC2B pin is SET when match on counting UP and RESET when match on counting
  // DOWN.
  TCCR2A = _BV(COM2B1) | _BV(COM2B0) | _BV(WGM20);
  TCCR2B = _BV(WGM22) | _BV(CS20);

  // Configuring the pulse polarities so that HSYNC is set OC0B when up-counting
  // and HVIS is cleared when up-counting means that the pulses are *nearly*
  // aligned already. However, the HSYNC pulse is not quite in the middle of the
  // inactive HVIS region so we offset the inactive pulse from the HSYNC pulse.
  TCNT0 = 0;
  TCNT2 = 256-(int)(hvis_inactive_offset * timer_freq);

  // Enable OVF interrupt for timer 2
  TIMSK2 |= 0x1;

  // Start timers.
  GTCCR = 0;
}

void loop() {
}
