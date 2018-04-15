EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:custom7400
LIBS:65xx
LIBS:computer-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1700 2200 1500 2100
U 5AD37A5B
F0 "Video Address Generation" 60
F1 "video_addr.sch" 60
F2 "HSYNC" I L 1700 2500 60 
F3 "VSYNC" I L 1700 2700 60 
F4 "VISIBLE" I L 1700 2900 60 
F5 "CA0" O R 3200 2500 60 
F6 "CA1" O R 3200 2600 60 
F7 "CA2" O R 3200 2700 60 
F8 "CA3" O R 3200 2800 60 
F9 "CA4" O R 3200 2900 60 
F10 "CA5" O R 3200 3000 60 
F11 "CA6" O R 3200 3100 60 
F12 "CHAR_CLK" I L 1700 2300 60 
F13 "RA0" O R 3200 3300 60 
F14 "RA1" O R 3200 3400 60 
F15 "RA2" O R 3200 3500 60 
F16 "RA3" O R 3200 3600 60 
F17 "RA4" O R 3200 3700 60 
F18 "RA5" O R 3200 3800 60 
F19 "RA6" O R 3200 3900 60 
F20 "RA7" O R 3200 4000 60 
F21 "RA8" O R 3200 4100 60 
F22 "RA9" O R 3200 4200 60 
F23 "~VRAMREQ" O R 3200 2300 60 
$EndSheet
Wire Wire Line
	3200 3100 4000 3100
Wire Wire Line
	4000 3000 3200 3000
Wire Wire Line
	3200 2900 4000 2900
Wire Wire Line
	4000 2800 3200 2800
Wire Wire Line
	3200 2700 4000 2700
Wire Wire Line
	4000 2600 3200 2600
Wire Wire Line
	3200 2500 4000 2500
Text Label 4000 2500 2    60   ~ 0
A0
Text Label 4000 2600 2    60   ~ 0
A1
Text Label 4000 2700 2    60   ~ 0
A2
Text Label 4000 2800 2    60   ~ 0
A3
Text Label 4000 2900 2    60   ~ 0
A4
Text Label 4000 3000 2    60   ~ 0
A5
Text Label 4000 3100 2    60   ~ 0
A6
Wire Wire Line
	3200 4200 4000 4200
Wire Wire Line
	4000 4100 3200 4100
Wire Wire Line
	3200 4000 4000 4000
Wire Wire Line
	4000 3900 3200 3900
Wire Wire Line
	3200 3800 4000 3800
Wire Wire Line
	4000 3700 3200 3700
Text Label 4000 3700 2    60   ~ 0
A7
Text Label 4000 3800 2    60   ~ 0
A8
Text Label 4000 3900 2    60   ~ 0
A9
Text Label 4000 4000 2    60   ~ 0
A10
Text Label 4000 4100 2    60   ~ 0
A11
Text Label 4000 4200 2    60   ~ 0
A12
$Comp
L WD65C02_ U?
U 1 1 5AD3C5D4
P 2450 5950
F 0 "U?" H 2450 5950 60  0000 C CNN
F 1 "WD65C02_" H 2450 4850 60  0000 C CNN
F 2 "" H 1900 6100 60  0000 C CNN
F 3 "" H 1900 6100 60  0000 C CNN
	1    2450 5950
	1    0    0    -1  
$EndComp
$Comp
L MS628128 U?
U 1 1 5AD3E769
P 6800 3550
F 0 "U?" H 6800 4750 50  0000 C CNN
F 1 "MS628128" H 6870 2350 50  0000 C CNN
F 2 "" H 6800 3550 50  0001 C CNN
F 3 "" H 6800 3550 50  0001 C CNN
	1    6800 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3100 5300 3100
Wire Wire Line
	5300 3000 6100 3000
Wire Wire Line
	6100 2900 5300 2900
Wire Wire Line
	5300 2800 6100 2800
Wire Wire Line
	6100 2700 5300 2700
Wire Wire Line
	5300 2600 6100 2600
Wire Wire Line
	6100 2500 5300 2500
Text Label 5300 2500 0    60   ~ 0
A0
Text Label 5300 2600 0    60   ~ 0
A1
Text Label 5300 2700 0    60   ~ 0
A2
Text Label 5300 2800 0    60   ~ 0
A3
Text Label 5300 2900 0    60   ~ 0
A4
Text Label 5300 3000 0    60   ~ 0
A5
Text Label 5300 3100 0    60   ~ 0
A6
Wire Wire Line
	6100 3700 5300 3700
Wire Wire Line
	5300 3600 6100 3600
Wire Wire Line
	6100 3500 5300 3500
Wire Wire Line
	5300 3400 6100 3400
Wire Wire Line
	6100 3300 5300 3300
Wire Wire Line
	5300 3200 6100 3200
Text Label 5300 3200 0    60   ~ 0
A7
Text Label 5300 3300 0    60   ~ 0
A8
Text Label 5300 3400 0    60   ~ 0
A9
Text Label 5300 3500 0    60   ~ 0
A10
Text Label 5300 3600 0    60   ~ 0
A11
Text Label 5300 3700 0    60   ~ 0
A12
Wire Wire Line
	6100 3900 5300 3900
Wire Wire Line
	5300 3800 6100 3800
Text Label 5300 3800 0    60   ~ 0
A13
Text Label 5300 3900 0    60   ~ 0
A14
Wire Wire Line
	4000 2300 3200 2300
Text Label 4000 2300 2    60   ~ 0
BE
Wire Wire Line
	1000 6300 1800 6300
Text Label 1000 6300 0    60   ~ 0
BE
Wire Wire Line
	1800 6100 1500 6100
Wire Wire Line
	1500 6100 1500 6300
Connection ~ 1500 6300
NoConn ~ 1800 6200
NoConn ~ 1800 6000
NoConn ~ 1800 6400
Wire Wire Line
	3200 3600 4000 3600
Wire Wire Line
	4000 3500 3200 3500
Wire Wire Line
	3200 3400 4000 3400
Wire Wire Line
	4000 3300 3200 3300
Text Label 4000 3300 2    60   ~ 0
RA0
Text Label 4000 3400 2    60   ~ 0
RA1
Text Label 4000 3500 2    60   ~ 0
RA2
Text Label 4000 3600 2    60   ~ 0
RA3
$EndSCHEMATC
