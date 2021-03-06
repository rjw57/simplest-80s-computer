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
LIBS:as6c1008
LIBS:z84c00
LIBS:nano
LIBS:as6c4008
LIBS:computer-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR031
U 1 1 5AF52005
P 3500 6900
F 0 "#PWR031" H 3500 6650 50  0001 C CNN
F 1 "GND" H 3500 6750 50  0000 C CNN
F 2 "" H 3500 6900 50  0001 C CNN
F 3 "" H 3500 6900 50  0001 C CNN
	1    3500 6900
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR032
U 1 1 5AF5201B
P 3500 5800
F 0 "#PWR032" H 3500 5650 50  0001 C CNN
F 1 "VCC" H 3500 5950 50  0000 C CNN
F 2 "" H 3500 5800 50  0001 C CNN
F 3 "" H 3500 5800 50  0001 C CNN
	1    3500 5800
	1    0    0    -1  
$EndComp
Text HLabel 1000 7700 0    60   Input ~ 0
~IORQ
Text HLabel 1000 7100 0    60   Input ~ 0
A6
Text HLabel 1000 7500 0    60   Input ~ 0
A7
Text HLabel 1000 6100 0    60   Input ~ 0
A3
Text HLabel 1000 6300 0    60   Input ~ 0
A4
Text HLabel 1000 6900 0    60   Input ~ 0
A5
Text HLabel 1000 5500 0    60   Input ~ 0
A2
Text HLabel 1000 5300 0    60   Input ~ 0
A1
Text HLabel 1000 4900 0    60   Input ~ 0
A0
Text HLabel 900  3000 0    60   Input ~ 0
D0
Text HLabel 900  3100 0    60   Input ~ 0
D1
Text HLabel 900  3200 0    60   Input ~ 0
D2
Text HLabel 900  3300 0    60   Input ~ 0
D3
Text HLabel 900  3400 0    60   Input ~ 0
D4
Text HLabel 900  3500 0    60   Input ~ 0
D5
$Comp
L VCC #PWR033
U 1 1 5AF5BF3B
P 7700 2900
F 0 "#PWR033" H 7700 2750 50  0001 C CNN
F 1 "VCC" H 7700 3050 50  0000 C CNN
F 2 "" H 7700 2900 50  0001 C CNN
F 3 "" H 7700 2900 50  0001 C CNN
	1    7700 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR034
U 1 1 5AF5BF58
P 7700 4100
F 0 "#PWR034" H 7700 3850 50  0001 C CNN
F 1 "GND" H 7700 3950 50  0000 C CNN
F 2 "" H 7700 4100 50  0001 C CNN
F 3 "" H 7700 4100 50  0001 C CNN
	1    7700 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR035
U 1 1 5AF5D03B
P 1600 5650
F 0 "#PWR035" H 1600 5400 50  0001 C CNN
F 1 "GND" H 1600 5500 50  0000 C CNN
F 2 "" H 1600 5650 50  0001 C CNN
F 3 "" H 1600 5650 50  0001 C CNN
	1    1600 5650
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR036
U 1 1 5AF5D041
P 1600 5150
F 0 "#PWR036" H 1600 5000 50  0001 C CNN
F 1 "VCC" H 1600 5300 50  0000 C CNN
F 2 "" H 1600 5150 50  0001 C CNN
F 3 "" H 1600 5150 50  0001 C CNN
	1    1600 5150
	1    0    0    -1  
$EndComp
Text HLabel 10600 3300 2    60   Output ~ 0
PA3
Text HLabel 10600 3400 2    60   Output ~ 0
PA4
Text HLabel 10600 3000 2    60   Output ~ 0
PA0
Text Notes 7350 7500 0    60   ~ 0
Address Decode & Port A
Wire Wire Line
	3500 6900 3500 6800
Wire Wire Line
	3500 5800 3500 5900
Wire Wire Line
	1000 5300 1200 5300
Wire Wire Line
	1000 4900 2700 4900
Wire Wire Line
	1000 6900 1200 6900
Wire Wire Line
	7700 2900 7700 2950
Wire Wire Line
	8700 3200 10600 3200
Wire Wire Line
	8700 3300 10600 3300
Wire Wire Line
	1600 5650 1600 5600
Wire Wire Line
	1600 5150 1600 5200
Wire Wire Line
	7300 3000 900  3000
Wire Wire Line
	900  3100 7300 3100
Wire Wire Line
	7300 3200 900  3200
Wire Wire Line
	900  3300 7300 3300
Wire Wire Line
	7300 3400 900  3400
Wire Wire Line
	900  3500 7300 3500
Wire Wire Line
	8700 3400 10600 3400
Wire Wire Line
	8700 3500 10600 3500
Wire Wire Line
	8700 3600 10600 3600
Wire Wire Line
	8700 3700 10600 3700
Text HLabel 1000 4200 0    60   Input ~ 0
~WR
Wire Wire Line
	5200 4200 1000 4200
Text HLabel 900  3600 0    60   Input ~ 0
D6
Text HLabel 900  3700 0    60   Input ~ 0
D7
Wire Wire Line
	7300 3600 900  3600
Wire Wire Line
	900  3700 7300 3700
Wire Wire Line
	8700 3000 10600 3000
Wire Wire Line
	8700 3100 10600 3100
Text HLabel 10600 3100 2    60   Output ~ 0
PA1
Text HLabel 10600 3200 2    60   Output ~ 0
PA2
Text Notes 4500 6600 0    60   ~ 0
Write I/O\nPort $00
$Comp
L VCC #PWR037
U 1 1 5B07F019
P 9500 5200
F 0 "#PWR037" H 9500 5050 50  0001 C CNN
F 1 "VCC" H 9500 5350 50  0000 C CNN
F 2 "" H 9500 5200 50  0001 C CNN
F 3 "" H 9500 5200 50  0001 C CNN
	1    9500 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR038
U 1 1 5B07F01F
P 9500 5900
F 0 "#PWR038" H 9500 5650 50  0001 C CNN
F 1 "GND" H 9500 5750 50  0000 C CNN
F 2 "" H 9500 5900 50  0001 C CNN
F 3 "" H 9500 5900 50  0001 C CNN
	1    9500 5900
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 5B07F02C
P 9500 5550
F 0 "C6" H 9525 5650 50  0000 L CNN
F 1 "100n" H 9525 5450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 9538 5400 50  0001 C CNN
F 3 "" H 9500 5550 50  0001 C CNN
	1    9500 5550
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 5B07F033
P 9900 5550
F 0 "C7" H 9925 5650 50  0000 L CNN
F 1 "100n" H 9925 5450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 9938 5400 50  0001 C CNN
F 3 "" H 9900 5550 50  0001 C CNN
	1    9900 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 5300 9900 5400
Wire Wire Line
	9500 5200 9500 5400
Connection ~ 9500 5300
Wire Wire Line
	9900 5800 9900 5700
Wire Wire Line
	9500 5700 9500 5900
Connection ~ 9500 5800
Wire Wire Line
	2600 7500 1000 7500
Wire Wire Line
	1200 7100 1000 7100
Wire Wire Line
	1200 5500 1000 5500
Wire Wire Line
	1000 6100 1400 6100
$Comp
L 74LS273 U9
U 1 1 5B081D11
P 8000 3500
F 0 "U9" H 8000 3350 50  0000 C CNN
F 1 "74HC273" H 8000 3150 50  0000 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm_Socket_LongPads" H 8000 3500 50  0001 C CNN
F 3 "" H 8000 3500 50  0001 C CNN
	1    8000 3500
	1    0    0    -1  
$EndComp
Text HLabel 1000 4800 0    60   Input ~ 0
~RESET
$Comp
L 74LS02 U7
U 4 1 5B082E0E
P 5800 4300
F 0 "U7" H 5800 4350 50  0000 C CNN
F 1 "74HC02" H 5850 4250 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket_LongPads" H 5800 4300 50  0001 C CNN
F 3 "" H 5800 4300 50  0001 C CNN
	4    5800 4300
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR039
U 1 1 5B082F09
P 5600 4050
F 0 "#PWR039" H 5600 3900 50  0001 C CNN
F 1 "VCC" H 5600 4200 50  0000 C CNN
F 2 "" H 5600 4050 50  0001 C CNN
F 3 "" H 5600 4050 50  0001 C CNN
	1    5600 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR040
U 1 1 5B082F3E
P 5600 4550
F 0 "#PWR040" H 5600 4300 50  0001 C CNN
F 1 "GND" H 5600 4400 50  0000 C CNN
F 2 "" H 5600 4550 50  0001 C CNN
F 3 "" H 5600 4550 50  0001 C CNN
	1    5600 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4550 5600 4500
Wire Wire Line
	5600 4050 5600 4100
$Comp
L 74LS02 U7
U 2 1 5B083807
P 1800 7000
F 0 "U7" H 1800 7050 50  0000 C CNN
F 1 "74HC02" H 1850 6950 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket_LongPads" H 1800 7000 50  0001 C CNN
F 3 "" H 1800 7000 50  0001 C CNN
	2    1800 7000
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR041
U 1 1 5B08380D
P 1600 6750
F 0 "#PWR041" H 1600 6600 50  0001 C CNN
F 1 "VCC" H 1600 6900 50  0000 C CNN
F 2 "" H 1600 6750 50  0001 C CNN
F 3 "" H 1600 6750 50  0001 C CNN
	1    1600 6750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR042
U 1 1 5B083813
P 1600 7250
F 0 "#PWR042" H 1600 7000 50  0001 C CNN
F 1 "GND" H 1600 7100 50  0000 C CNN
F 2 "" H 1600 7250 50  0001 C CNN
F 3 "" H 1600 7250 50  0001 C CNN
	1    1600 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 7250 1600 7200
Wire Wire Line
	1600 6750 1600 6800
$Comp
L 74LS02 U7
U 3 1 5B086B44
P 2000 6200
F 0 "U7" H 2000 6250 50  0000 C CNN
F 1 "74HC02" H 2050 6150 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket_LongPads" H 2000 6200 50  0001 C CNN
F 3 "" H 2000 6200 50  0001 C CNN
	3    2000 6200
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR043
U 1 1 5B086B4A
P 1800 5950
F 0 "#PWR043" H 1800 5800 50  0001 C CNN
F 1 "VCC" H 1800 6100 50  0000 C CNN
F 2 "" H 1800 5950 50  0001 C CNN
F 3 "" H 1800 5950 50  0001 C CNN
	1    1800 5950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR044
U 1 1 5B086B50
P 1800 6450
F 0 "#PWR044" H 1800 6200 50  0001 C CNN
F 1 "GND" H 1800 6300 50  0000 C CNN
F 2 "" H 1800 6450 50  0001 C CNN
F 3 "" H 1800 6450 50  0001 C CNN
	1    1800 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 6450 1800 6400
Wire Wire Line
	1800 5950 1800 6000
$Comp
L 74LS138 U8
U 1 1 5AF51FC7
P 3500 6350
F 0 "U8" H 3200 5850 50  0000 L TNN
F 1 "74HC138" V 3500 6350 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_Socket_LongPads" H 3500 6350 50  0001 C CNN
F 3 "" H 3500 6350 50  0001 C CNN
	1    3500 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 7700 2700 7700
Wire Wire Line
	2700 7700 2700 6700
Wire Wire Line
	2700 6700 2900 6700
Wire Wire Line
	2600 6600 2600 7500
Wire Wire Line
	2500 7000 2400 7000
Wire Wire Line
	2500 6500 2500 7000
Wire Wire Line
	2600 6200 2900 6200
Wire Wire Line
	2900 6500 2500 6500
Wire Wire Line
	2900 6600 2600 6600
Wire Wire Line
	1000 6300 1400 6300
Wire Wire Line
	2700 4900 2700 6000
Wire Wire Line
	2700 6000 2900 6000
Wire Wire Line
	2400 5400 2600 5400
Wire Wire Line
	2600 5400 2600 6100
Wire Wire Line
	2600 6100 2900 6100
Wire Wire Line
	4400 4400 4400 6600
Wire Wire Line
	7700 4050 7700 4100
$Comp
L C C8
U 1 1 5B08A5D9
P 10300 5550
F 0 "C8" H 10325 5650 50  0000 L CNN
F 1 "100n" H 10325 5450 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 10338 5400 50  0001 C CNN
F 3 "" H 10300 5550 50  0001 C CNN
	1    10300 5550
	1    0    0    -1  
$EndComp
Connection ~ 9900 5300
Wire Wire Line
	10300 5300 10300 5400
Wire Wire Line
	10300 5800 10300 5700
Connection ~ 9900 5800
NoConn ~ 4100 6000
NoConn ~ 4100 6100
NoConn ~ 4100 6200
NoConn ~ 4100 6300
NoConn ~ 4100 6500
NoConn ~ 4100 6700
$Comp
L 74LS02 U7
U 1 1 5B0951F0
P 1800 5400
F 0 "U7" H 1800 5450 50  0000 C CNN
F 1 "74HC02" H 1850 5350 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket_LongPads" H 1800 5400 50  0001 C CNN
F 3 "" H 1800 5400 50  0001 C CNN
	1    1800 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 5300 10300 5300
Wire Wire Line
	9500 5800 10300 5800
NoConn ~ 4100 6400
Wire Wire Line
	4400 6600 4100 6600
Text HLabel 10600 3500 2    60   Output ~ 0
PA5
Text HLabel 10600 3600 2    60   Output ~ 0
PA6
Text HLabel 10600 3700 2    60   Output ~ 0
PA7
Wire Wire Line
	4400 4400 5200 4400
Wire Wire Line
	7000 4800 1000 4800
Wire Wire Line
	7000 4000 7000 4800
Wire Wire Line
	7300 3900 6600 3900
Wire Wire Line
	6600 3900 6600 4300
Wire Wire Line
	6600 4300 6400 4300
Wire Wire Line
	7000 4000 7300 4000
$EndSCHEMATC
