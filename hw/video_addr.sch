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
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1800 1300 0    60   Input ~ 0
HSYNC
Text HLabel 1800 5100 0    60   Input ~ 0
VSYNC
Text HLabel 1800 3500 0    60   Input ~ 0
VISIBLE
$Comp
L 74HC04 U?
U 1 1 5AD37AAE
P 2950 1300
F 0 "U?" H 3100 1400 50  0000 C CNN
F 1 "74HC04" H 3150 1200 50  0000 C CNN
F 2 "" H 2950 1300 50  0001 C CNN
F 3 "" H 2950 1300 50  0001 C CNN
	1    2950 1300
	1    0    0    -1  
$EndComp
$Comp
L 74HC04 U?
U 1 1 5AD37B2A
P 2950 5100
F 0 "U?" H 3100 5200 50  0000 C CNN
F 1 "74HC04" H 3150 5000 50  0000 C CNN
F 2 "" H 2950 5100 50  0001 C CNN
F 3 "" H 2950 5100 50  0001 C CNN
	1    2950 5100
	1    0    0    -1  
$EndComp
$Comp
L 74HC04 U?
U 1 1 5AD37B4E
P 2950 3500
F 0 "U?" H 3100 3600 50  0000 C CNN
F 1 "74HC04" H 3150 3400 50  0000 C CNN
F 2 "" H 2950 3500 50  0001 C CNN
F 3 "" H 2950 3500 50  0001 C CNN
	1    2950 3500
	1    0    0    -1  
$EndComp
$Comp
L 74HC590 U?
U 1 1 5AD38427
P 6200 1750
F 0 "U?" H 6200 1750 60  0000 C CNN
F 1 "74HC590" H 5700 1050 60  0000 L TNN
F 2 "" H 5350 750 60  0001 C CNN
F 3 "" H 5350 750 60  0001 C CNN
	1    6200 1750
	1    0    0    -1  
$EndComp
Text HLabel 10000 1300 2    60   Output ~ 0
CA0
Text HLabel 10000 1400 2    60   Output ~ 0
CA1
Text HLabel 10000 1500 2    60   Output ~ 0
CA2
Text HLabel 10000 1600 2    60   Output ~ 0
CA3
Text HLabel 10000 1700 2    60   Output ~ 0
CA4
Text HLabel 10000 1800 2    60   Output ~ 0
CA5
Text HLabel 10000 1900 2    60   Output ~ 0
CA6
NoConn ~ 6900 2000
NoConn ~ 6900 2200
$Comp
L GND #PWR?
U 1 1 5AD3863C
P 6200 2400
F 0 "#PWR?" H 6200 2150 50  0001 C CNN
F 1 "GND" H 6200 2250 50  0000 C CNN
F 2 "" H 6200 2400 50  0001 C CNN
F 3 "" H 6200 2400 50  0001 C CNN
	1    6200 2400
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5AD38658
P 6200 1100
F 0 "#PWR?" H 6200 950 50  0001 C CNN
F 1 "VCC" H 6200 1250 50  0000 C CNN
F 2 "" H 6200 1100 50  0001 C CNN
F 3 "" H 6200 1100 50  0001 C CNN
	1    6200 1100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AD38741
P 2900 1400
F 0 "#PWR?" H 2900 1150 50  0001 C CNN
F 1 "GND" H 2900 1250 50  0000 C CNN
F 2 "" H 2900 1400 50  0001 C CNN
F 3 "" H 2900 1400 50  0001 C CNN
	1    2900 1400
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5AD38758
P 2900 1200
F 0 "#PWR?" H 2900 1050 50  0001 C CNN
F 1 "VCC" H 2900 1350 50  0000 C CNN
F 2 "" H 2900 1200 50  0001 C CNN
F 3 "" H 2900 1200 50  0001 C CNN
	1    2900 1200
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5AD387B5
P 2900 5000
F 0 "#PWR?" H 2900 4850 50  0001 C CNN
F 1 "VCC" H 2900 5150 50  0000 C CNN
F 2 "" H 2900 5000 50  0001 C CNN
F 3 "" H 2900 5000 50  0001 C CNN
	1    2900 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AD387CC
P 2900 5200
F 0 "#PWR?" H 2900 4950 50  0001 C CNN
F 1 "GND" H 2900 5050 50  0000 C CNN
F 2 "" H 2900 5200 50  0001 C CNN
F 3 "" H 2900 5200 50  0001 C CNN
	1    2900 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AD3883B
P 2900 3600
F 0 "#PWR?" H 2900 3350 50  0001 C CNN
F 1 "GND" H 2900 3450 50  0000 C CNN
F 2 "" H 2900 3600 50  0001 C CNN
F 3 "" H 2900 3600 50  0001 C CNN
	1    2900 3600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5AD38872
P 2900 3400
F 0 "#PWR?" H 2900 3250 50  0001 C CNN
F 1 "VCC" H 2900 3550 50  0000 C CNN
F 2 "" H 2900 3400 50  0001 C CNN
F 3 "" H 2900 3400 50  0001 C CNN
	1    2900 3400
	1    0    0    -1  
$EndComp
Text HLabel 1800 1800 0    60   Input ~ 0
CHAR_CLK
$Comp
L 74HC04 U?
U 1 1 5AD38917
P 2950 2400
F 0 "U?" H 3100 2500 50  0000 C CNN
F 1 "74HC04" H 3150 2300 50  0000 C CNN
F 2 "" H 2950 2400 50  0001 C CNN
F 3 "" H 2950 2400 50  0001 C CNN
	1    2950 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AD3891D
P 2900 2500
F 0 "#PWR?" H 2900 2250 50  0001 C CNN
F 1 "GND" H 2900 2350 50  0000 C CNN
F 2 "" H 2900 2500 50  0001 C CNN
F 3 "" H 2900 2500 50  0001 C CNN
	1    2900 2500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5AD38923
P 2900 2300
F 0 "#PWR?" H 2900 2150 50  0001 C CNN
F 1 "VCC" H 2900 2450 50  0000 C CNN
F 2 "" H 2900 2300 50  0001 C CNN
F 3 "" H 2900 2300 50  0001 C CNN
	1    2900 2300
	1    0    0    -1  
$EndComp
$Comp
L 74HC590 U?
U 1 1 5AD38CF4
P 6200 3750
F 0 "U?" H 6200 3750 60  0000 C CNN
F 1 "74HC590" H 5700 3050 60  0000 L TNN
F 2 "" H 5350 2750 60  0001 C CNN
F 3 "" H 5350 2750 60  0001 C CNN
	1    6200 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AD38CFA
P 6200 4400
F 0 "#PWR?" H 6200 4150 50  0001 C CNN
F 1 "GND" H 6200 4250 50  0000 C CNN
F 2 "" H 6200 4400 50  0001 C CNN
F 3 "" H 6200 4400 50  0001 C CNN
	1    6200 4400
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5AD38D00
P 6200 3100
F 0 "#PWR?" H 6200 2950 50  0001 C CNN
F 1 "VCC" H 6200 3250 50  0000 C CNN
F 2 "" H 6200 3100 50  0001 C CNN
F 3 "" H 6200 3100 50  0001 C CNN
	1    6200 3100
	1    0    0    -1  
$EndComp
$Comp
L 74HC590 U?
U 1 1 5AD38DC0
P 6200 5550
F 0 "U?" H 6200 5550 60  0000 C CNN
F 1 "74HC590" H 5700 4850 60  0000 L TNN
F 2 "" H 5350 4550 60  0001 C CNN
F 3 "" H 5350 4550 60  0001 C CNN
	1    6200 5550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AD38DC6
P 6200 6200
F 0 "#PWR?" H 6200 5950 50  0001 C CNN
F 1 "GND" H 6200 6050 50  0000 C CNN
F 2 "" H 6200 6200 50  0001 C CNN
F 3 "" H 6200 6200 50  0001 C CNN
	1    6200 6200
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5AD38DCC
P 6200 4900
F 0 "#PWR?" H 6200 4750 50  0001 C CNN
F 1 "VCC" H 6200 5050 50  0000 C CNN
F 2 "" H 6200 4900 50  0001 C CNN
F 3 "" H 6200 4900 50  0001 C CNN
	1    6200 4900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AD38F48
P 5500 3700
F 0 "#PWR?" H 5500 3450 50  0001 C CNN
F 1 "GND" H 5500 3550 50  0000 C CNN
F 2 "" H 5500 3700 50  0001 C CNN
F 3 "" H 5500 3700 50  0001 C CNN
	1    5500 3700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5AD38F83
P 5500 5500
F 0 "#PWR?" H 5500 5250 50  0001 C CNN
F 1 "GND" H 5500 5350 50  0000 C CNN
F 2 "" H 5500 5500 50  0001 C CNN
F 3 "" H 5500 5500 50  0001 C CNN
	1    5500 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 1300 10000 1300
Wire Wire Line
	10000 1400 6900 1400
Wire Wire Line
	6900 1500 10000 1500
Wire Wire Line
	10000 1600 6900 1600
Wire Wire Line
	6900 1700 10000 1700
Wire Wire Line
	10000 1800 6900 1800
Wire Wire Line
	6900 1900 10000 1900
Wire Wire Line
	1800 1300 2500 1300
Wire Wire Line
	2500 5100 1800 5100
Wire Wire Line
	1800 3500 2500 3500
Wire Wire Line
	5500 1300 3400 1300
Wire Wire Line
	4100 1500 5500 1500
Wire Wire Line
	5100 1500 5100 1700
Wire Wire Line
	5100 1700 5500 1700
Connection ~ 5100 1500
Wire Wire Line
	1800 1800 5500 1800
Wire Wire Line
	2300 1800 2300 2400
Wire Wire Line
	2300 2400 2500 2400
Connection ~ 2300 1800
Wire Wire Line
	3600 2400 3400 2400
Wire Wire Line
	3600 1900 5500 1900
Wire Wire Line
	3400 5100 5500 5100
Wire Wire Line
	4400 5100 4400 3300
Wire Wire Line
	4400 3300 5500 3300
Wire Wire Line
	3400 3500 5500 3500
Wire Wire Line
	4100 1500 4100 5300
Wire Wire Line
	4100 5300 5500 5300
Wire Wire Line
	4700 5600 5500 5600
Wire Wire Line
	4700 1800 4700 5600
Wire Wire Line
	4700 3800 5500 3800
Wire Wire Line
	6900 4200 7200 4200
Wire Wire Line
	7200 4200 7200 4650
Wire Wire Line
	7200 4650 5200 4650
Wire Wire Line
	5200 4650 5200 5700
Wire Wire Line
	5200 5700 5500 5700
Connection ~ 4400 5100
Wire Wire Line
	3600 1900 3600 2400
Connection ~ 4100 3500
Connection ~ 4700 1800
Connection ~ 4700 3800
Wire Wire Line
	5100 3500 5100 3900
Wire Wire Line
	5100 3900 5500 3900
Connection ~ 5100 3500
Text HLabel 10000 3300 2    60   Output ~ 0
RA0
Text HLabel 10000 3400 2    60   Output ~ 0
RA1
Text HLabel 10000 3500 2    60   Output ~ 0
RA2
Text HLabel 10000 3600 2    60   Output ~ 0
RA3
Text HLabel 10000 3700 2    60   Output ~ 0
RA4
Text HLabel 10000 3800 2    60   Output ~ 0
RA5
Text HLabel 10000 3900 2    60   Output ~ 0
RA6
Wire Wire Line
	6900 3300 10000 3300
Wire Wire Line
	10000 3400 6900 3400
Wire Wire Line
	6900 3500 10000 3500
Wire Wire Line
	10000 3600 6900 3600
Wire Wire Line
	6900 3700 10000 3700
Wire Wire Line
	10000 3800 6900 3800
Wire Wire Line
	6900 3900 10000 3900
Text HLabel 10000 4000 2    60   Output ~ 0
RA7
Wire Wire Line
	6900 4000 10000 4000
Text HLabel 10000 5100 2    60   Output ~ 0
RA8
Text HLabel 10000 5200 2    60   Output ~ 0
RA9
Wire Wire Line
	6900 5100 10000 5100
Wire Wire Line
	10000 5200 6900 5200
NoConn ~ 6900 5300
NoConn ~ 6900 5400
NoConn ~ 6900 5500
NoConn ~ 6900 5600
NoConn ~ 6900 5700
NoConn ~ 6900 5800
NoConn ~ 6900 6000
Text HLabel 10000 2750 2    60   Output ~ 0
~VRAMREQ
Wire Wire Line
	10000 2750 4100 2750
Connection ~ 4100 2750
$EndSCHEMATC
