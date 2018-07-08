#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdint.h>
#include <stdlib.h>

// VGA timing generator.
//
// Output HSYNC, VSYNC, and VISB signals.

// Pin assignment - ATMEGA328P
#define HSYNC_PORT_BIT  5   // =OC0B, pin 11, fixed by hardware
#define HSYNC_PORT_NAME D
#define VISB_PORT_BIT    3   // =OC2B, pin 5, fixed by hardware
#define VISB_PORT_NAME   D
#define VSYNC_PORT_BIT  2   // =OC1B, pin 16, fixed by hardware
#define VSYNC_PORT_NAME B

#define HEARTBEAT_PORT_BIT  0   // pin 2, free choice
#define HEARTBEAT_PORT_NAME D

// Free choices:

#define WRB_PORT_BIT 2  // pin 4
#define WRB_PORT_NAME D
#define DSB_PORT_BIT 4  // pin 6
#define DSB_PORT_NAME D
#define A0_PORT_BIT 0  // pin 14
#define A0_PORT_NAME B
#define A1_PORT_BIT 1  // pin 15
#define A1_PORT_NAME B
#define WAITB_PORT_BIT 1  // pin 3
#define WAITB_PORT_NAME D

// Define constant to 1 if should bit-bang CPU bus
#define DEMO_MODE 1

#if 0
// 640x480 VGA @ 60Hz
const double dot_clock_freq       = 25.175;           // MHz
const int h_visible_area          = 640;              // pixels
const int h_front_porch           = 16;               // pixels
const int h_sync_width            = 96;               // pixels
const int h_back_porch            = 48;               // pixels
const int h_polarity              = -1;               // sign

const int v_visible_area          = 480;              // lines
const int v_front_porch           = 10;               // lines
const int v_sync_width            = 2;                // lines
const int v_back_porch            = 33;               // lines
const int v_polarity              = -1;               // sign
#endif

#if 0
// 640x408 VGA @ 60Hz centred in 640x480 window
const double dot_clock_freq       = 25.175;           // MHz
const int h_visible_area          = 640;              // pixels
const int h_front_porch           = 16;               // pixels
const int h_sync_width            = 96;               // pixels
const int h_back_porch            = 48;               // pixels
const int h_polarity              = -1;               // sign

const int v_visible_area          = 408;              // lines
const int v_front_porch           = 46;               // lines
const int v_sync_width            = 2;                // lines
const int v_back_porch            = 69;               // lines
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
// 1024x768 XGA with half dot clock
// FIXME: need actual oscillator at this freq
//const double dot_clock_freq       = 32;               // MHz
const double dot_clock_freq       = 25.175;           // MHz
const int h_visible_area          = 1024/2;           // pixels
const int h_front_porch           = 24/2;             // pixels
const int h_sync_width            = 136/2;            // pixels
const int h_back_porch            = 160/2;            // pixels
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
const uint16_t whole_frame             =
    v_visible_area + v_front_porch + v_sync_width + v_back_porch;

// Counter timer
const double timer_freq           = dot_clock_freq / 2;   // MHz

// CPU frequency is half the dot clock
#define F_CPU (unsigned long)((dot_clock_freq / 2) * 1e6)

#define PASTER(x,y) x ## y
#define EVALUATOR(x, y) PASTER(x, y)

#define set_pin_output(port_name, port_bit) do { \
  EVALUATOR(DDR, port_name) |= _BV(EVALUATOR(PORT, EVALUATOR(port_name, port_bit))); \
} while(0)

#define set_pin(port_name, port_bit) do { \
  EVALUATOR(PORT, port_name) |= _BV(EVALUATOR(PORT, EVALUATOR(port_name, port_bit))); \
} while(0)

#define reset_pin(port_name, port_bit) do { \
  EVALUATOR(PORT, port_name) &= ~_BV(EVALUATOR(PORT, EVALUATOR(port_name, port_bit))); \
} while(0)

#define read_pin(port_name, port_bit) (EVALUATOR(PIN, port_name) & _BV(EVALUATOR(PIN, EVALUATOR(port_name, port_bit))))

#if DEMO_MODE
// As F_CPU is set, we can include the delay utilities.
#include <util/delay.h>
#include <avr/pgmspace.h>
#include "font/font.h"
#endif

// Called around the middle of the HSYNC pulse which will be after TCNT1 update.
// Use the value of TCNT1 (the row counter) to determine if the VISB pulse
// should be enabled for this line.
ISR(TIMER0_OVF_vect) {
  // Note: TCNT1 == 0 implies start of VSYNC pulse which explains why all of
  // these values are offset by v_front_porch.
  switch(TCNT1) {
    case v_sync_width + v_back_porch:
      // Enable VISB pulse output for this line
      TCCR2A |= (_BV(COM2B1));
      break;
    case v_sync_width + v_back_porch + v_visible_area:
      // Disable VISB pulse output for this line
      TCCR2A &= ~(_BV(COM2B1));
      break;
  }
}

inline void write_data(uint8_t data) {
  PORTC &= ~0x3F;
  PORTC |= data & 0x3F;
  PORTD &= ~0xC0;
  PORTD |= data & 0xC0;
}

inline void write(uint8_t addr, uint8_t data) {
  if(addr & 0x1) {
    set_pin(A0_PORT_NAME, A0_PORT_BIT);
  } else {
    reset_pin(A0_PORT_NAME, A0_PORT_BIT);
  }

  if(addr & 0x2) {
    set_pin(A1_PORT_NAME, A1_PORT_BIT);
  } else {
    reset_pin(A1_PORT_NAME, A1_PORT_BIT);
  }

  write_data(data);

  set_pin(WRB_PORT_NAME, WRB_PORT_BIT);
  reset_pin(DSB_PORT_NAME, DSB_PORT_BIT);
  reset_pin(WRB_PORT_NAME, WRB_PORT_BIT);
  while(!read_pin(WAITB_PORT_NAME, WAITB_PORT_BIT)) { };
  set_pin(WRB_PORT_NAME, WRB_PORT_BIT);
  set_pin(DSB_PORT_NAME, DSB_PORT_BIT);
}

inline void write_vram(uint16_t addr, uint8_t value) {
  write(0, addr & 0xFF);
  write(1, (addr >> 8) & 0xFF);
  write(2, value);
}

static uint8_t cursor_x = 0, cursor_y = 0;
static bool inverse_text = false;

inline void print_at(uint8_t x, uint8_t y, uint8_t ch) {
  uint16_t addr = ((uint16_t)(y) << (6+3)) + ((uint16_t)x);
  uint16_t font_addr = ((uint16_t)(ch)<<3);
  for(int r=0; r<8; ++r, addr+=64, font_addr++) {
    uint8_t row = pgm_read_byte(&(font[font_addr]));
    write_vram(addr, inverse_text ? ~row : row);
  }
}

inline void putc(uint8_t ch) {
  print_at(cursor_x, cursor_y, ch);
  cursor_x += 1;
  if(cursor_x == 64) { cursor_x = 0; cursor_y += 1; }
  if(cursor_y == 48) { cursor_y = 0; }
}

inline void puts(const void* s) {
  const uint8_t* buf = (const uint8_t*)s;
  for(; *buf != '\0'; ++buf) { putc(*buf); }
}

inline void cursor_set(uint8_t x, uint8_t y) {
  cursor_x = x < 64 ? x : 64;
  cursor_y = y < 48 ? y : 47;
}

void setup() {
  set_pin_output(HSYNC_PORT_NAME, HSYNC_PORT_BIT);
  set_pin_output(VSYNC_PORT_NAME, VSYNC_PORT_BIT);
  set_pin_output(VISB_PORT_NAME, VISB_PORT_BIT);
  set_pin_output(HEARTBEAT_PORT_NAME, HEARTBEAT_PORT_BIT);

#if DEMO_MODE
  set_pin(WRB_PORT_NAME, WRB_PORT_BIT);
  set_pin(DSB_PORT_NAME, DSB_PORT_BIT);
  reset_pin(A0_PORT_NAME, A0_PORT_BIT);
  reset_pin(A1_PORT_NAME, A1_PORT_BIT);

  set_pin_output(WRB_PORT_NAME, WRB_PORT_BIT);
  set_pin_output(DSB_PORT_NAME, DSB_PORT_BIT);
  set_pin_output(A0_PORT_NAME, A0_PORT_BIT);
  set_pin_output(A1_PORT_NAME, A1_PORT_BIT);

  // Data bus
  DDRC |= 0x3F;
  DDRD |= 0xC0;
#endif

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

  // Timer 0: HSYNC

  // Set HSYNC pulse width,
  OCR0B = (int)(h_sync_width_t * timer_freq / 2.);

  // Phase correct PWM, TOP = OCR0A, internal clock, no pre-scaling,
  // OC0B pin is RESET when match on counting UP and SET when match on counting
  // DOWN for +ve HSYNC polarity. (Opposite for -ve.)
  TCCR0A = _BV(COM0B1) | _BV(WGM00) | ((h_polarity < 0) ? _BV(COM2B0) : 0);
  TCCR0B = _BV(WGM02) | _BV(CS00);

  // Timer 1: VSYNC

  // T1 == OC0B which is HSYNC so we can use it as a clock which is a happy
  // co-incidence.

  // TOP/OCR1A is set to the total size of the frame in lines minus 1 since it
  // is zero based.
  OCR1A = whole_frame - 1;

  // OCR1B is set to the pulse width minus 1 since it is zero based.
  OCR1B = v_sync_width - 1;

  // Fast PWM, TOP = OCR1A
  TCCR1A = _BV(WGM11) | _BV(WGM10);
  TCCR1B = _BV(WGM13) | _BV(WGM12);

  if(v_polarity < 0) {
    // Set OC1B on match, clear at bottom.
    TCCR1A |= _BV(COM1B1) | _BV(COM1B0);
  } else {
    // Clear OC1B on match, set at bottom.
    TCCR1A |= _BV(COM1B1);
  }

  // Depending on polarity of HSYNC, clock on rising or falling edge of T1 (aka
  // HSYNC).
  if(h_polarity < 0) {
    // Clock on falling edge of T1.
    TCCR1B |= _BV(CS12) | _BV(CS11);
  } else {
    // Clock on rising edge of T1.
    TCCR1B |= _BV(CS12) | _BV(CS11) | _BV(CS10);
  }

  // Timer 2: VISB

  // We set the display inactive pulse width because that pulse is nearly
  // aligned to HSYNC already.
  OCR2B = (int)(hvis_inactive_width * timer_freq / 2.);

  // Phase correct PWM, TOP = OCR2A, no clock, no pre-scaling,
  // OC2B pin is SET when match on counting UP and RESET when match on counting
  // DOWN (see timer 0 overflow handler).
  TCCR2A = _BV(WGM20);
  TCCR2B = _BV(WGM22) | _BV(CS20);

  // set default VISB value for when VISB is disabled
  set_pin(VISB_PORT_NAME, VISB_PORT_BIT);

  // The centre points of the HSYNC and VISB pulses are *nearly* aligned
  // already. However, the HSYNC pulse is not quite in the middle of the
  // inactive VISB region so we offset the inactive pulse from the HSYNC pulse.
  TCNT0 = 0;
  TCNT1 = 0; // corresponds to start of vsync pulse
  TCNT2 = 256-(int)(hvis_inactive_offset * timer_freq);

  // Enable OVF interrupt for timer 0
  TIMSK0 |= _BV(TOIE0);

  // Start timers and enable interrupts.
  sei();
  GTCCR = 0;
}

void loop() {
#if DEMO_MODE
  uint16_t x=0, y=0, dx=0, addr=0;
  float r2;

  for(addr=0, y=0; y<384; y++) {
    uint8_t b = (y & 1) ? 0xAA : 0x55;
    for(x=0; x<512; x+=8, addr++) {
      write_vram(addr, b);
    }
  }

  _delay_ms(2000);

  cursor_set(0, 0);
  for(uint16_t i=0; i<64*48; ++i) {
    inverse_text = (i & 0x100) ? true : false;
    putc(i & 0xff);
  }

  _delay_ms(2000);

  inverse_text = true;
  for(uint16_t i=0; i<30*64*48; ++i) {
    cursor_set(random() % 64, random() % 48);
    putc(random() & 0xff);
  }

  set_pin(HEARTBEAT_PORT_NAME, HEARTBEAT_PORT_BIT);

  for(addr=0, y=0; y<384; y++) {
    float v = y - 192.f;
    uint8_t c1 = 0xFF, c2 = 0x00, c3 = (y & 1) ? 0x55 : 0xAA;
    for(x=0; x<512; x+=8, addr++) {
      uint8_t b = 0;
      for(dx=0; dx<8; dx++) {
        float u = (x + dx) - 256.f;
        r2 = u*u + v*v;
        if(r2 < 190.f*190.f) {
          if(r2 < 128.f*123.f) {
            b |= c3 & (1<<(7-dx));
          } else {
            b |= c2 & (1<<(7-dx));
          }
        } else {
          b |= c1 & (1<<(7-dx));
        }
      }
      write_vram(addr, b);
    }
  }

  reset_pin(HEARTBEAT_PORT_NAME, HEARTBEAT_PORT_BIT);
#else
  set_pin(HEARTBEAT_PORT_NAME, HEARTBEAT_PORT_BIT);
  _delay_ms(500);
  reset_pin(HEARTBEAT_PORT_NAME, HEARTBEAT_PORT_BIT);
  _delay_ms(500);
#endif
}

int main() {
  setup();

  while(1) { loop(); };

  return 0;
}
