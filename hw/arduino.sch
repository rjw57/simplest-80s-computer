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
LIBS:74hc30
LIBS:computer-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L 74HC595 U4
U 1 1 5AF147B2
P 7000 1850
F 0 "U4" H 7150 2450 50  0000 C CNN
F 1 "74HC595" H 7000 1250 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_Socket_LongPads" H 7000 1850 50  0001 C CNN
F 3 "" H 7000 1850 50  0001 C CNN
	1    7000 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 5AF14803
P 6700 2500
F 0 "#PWR017" H 6700 2250 50  0001 C CNN
F 1 "GND" H 6700 2350 50  0000 C CNN
F 2 "" H 6700 2500 50  0001 C CNN
F 3 "" H 6700 2500 50  0001 C CNN
	1    6700 2500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR018
U 1 1 5AF1481F
P 6700 1200
F 0 "#PWR018" H 6700 1050 50  0001 C CNN
F 1 "VCC" H 6700 1350 50  0000 C CNN
F 2 "" H 6700 1200 50  0001 C CNN
F 3 "" H 6700 1200 50  0001 C CNN
	1    6700 1200
	1    0    0    -1  
$EndComp
$Comp
L 74HC595 U5
U 1 1 5AF14A70
P 7000 3650
F 0 "U5" H 7150 4250 50  0000 C CNN
F 1 "74HC595" H 7000 3050 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_Socket_LongPads" H 7000 3650 50  0001 C CNN
F 3 "" H 7000 3650 50  0001 C CNN
	1    7000 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 5AF14A76
P 6700 4300
F 0 "#PWR019" H 6700 4050 50  0001 C CNN
F 1 "GND" H 6700 4150 50  0000 C CNN
F 2 "" H 6700 4300 50  0001 C CNN
F 3 "" H 6700 4300 50  0001 C CNN
	1    6700 4300
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR020
U 1 1 5AF14A7D
P 6700 3000
F 0 "#PWR020" H 6700 2850 50  0001 C CNN
F 1 "VCC" H 6700 3150 50  0000 C CNN
F 2 "" H 6700 3000 50  0001 C CNN
F 3 "" H 6700 3000 50  0001 C CNN
	1    6700 3000
	1    0    0    -1  
$EndComp
Text Label 5300 1400 0    60   ~ 0
ASDA
Text Label 5200 3400 0    60   ~ 0
ASCLK
Text Label 5200 3800 0    60   ~ 0
~AOE
Text HLabel 8400 1400 2    60   Output ~ 0
A0
Text HLabel 8400 1500 2    60   Output ~ 0
A1
Text HLabel 8400 1600 2    60   Output ~ 0
A2
Text HLabel 8400 1700 2    60   Output ~ 0
A3
Text HLabel 8400 1800 2    60   Output ~ 0
A4
Text HLabel 8400 1900 2    60   Output ~ 0
A5
Text HLabel 8400 2000 2    60   Output ~ 0
A6
Text HLabel 8400 2100 2    60   Output ~ 0
A7
Text HLabel 8400 3200 2    60   Output ~ 0
A8
Text HLabel 8400 3300 2    60   Output ~ 0
A9
Text HLabel 8400 3400 2    60   Output ~ 0
A10
Text HLabel 8400 3500 2    60   Output ~ 0
A11
Text HLabel 8400 3600 2    60   Output ~ 0
A12
Text HLabel 8400 3700 2    60   Output ~ 0
A13
Text HLabel 8400 3800 2    60   Output ~ 0
A14
Text HLabel 8400 3900 2    60   Output ~ 0
A15
Text Label 5200 3700 0    60   ~ 0
ARCLK
$Comp
L R R6
U 1 1 5AF14F10
P 6000 1050
F 0 "R6" V 6080 1050 50  0000 C CNN
F 1 "330R" V 6000 1050 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5930 1050 50  0001 C CNN
F 3 "" H 6000 1050 50  0001 C CNN
	1    6000 1050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR021
U 1 1 5AF1512E
P 6000 800
F 0 "#PWR021" H 6000 650 50  0001 C CNN
F 1 "VCC" H 6000 950 50  0000 C CNN
F 2 "" H 6000 800 50  0001 C CNN
F 3 "" H 6000 800 50  0001 C CNN
	1    6000 800 
	1    0    0    -1  
$EndComp
Text HLabel 4500 2600 2    60   BiDi ~ 0
D0
Text HLabel 4500 2500 2    60   BiDi ~ 0
D1
Text HLabel 4500 2400 2    60   BiDi ~ 0
D2
Text HLabel 4500 2300 2    60   BiDi ~ 0
D3
Text HLabel 4500 2200 2    60   BiDi ~ 0
D4
Text HLabel 4500 2100 2    60   BiDi ~ 0
D5
Text HLabel 1400 2300 0    60   BiDi ~ 0
D6
Text HLabel 1400 2400 0    60   BiDi ~ 0
D7
Text HLabel 8400 5100 2    60   Output ~ 0
~RD
Text HLabel 8400 5200 2    60   Output ~ 0
~WR
$Comp
L VCC #PWR022
U 1 1 5AF15EBF
P 4500 1800
F 0 "#PWR022" H 4500 1650 50  0001 C CNN
F 1 "VCC" H 4500 1950 50  0000 C CNN
F 2 "" H 4500 1800 50  0001 C CNN
F 3 "" H 4500 1800 50  0001 C CNN
	1    4500 1800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR023
U 1 1 5AF15F5B
P 1400 1800
F 0 "#PWR023" H 1400 1550 50  0001 C CNN
F 1 "GND" H 1400 1650 50  0000 C CNN
F 2 "" H 1400 1800 50  0001 C CNN
F 3 "" H 1400 1800 50  0001 C CNN
	1    1400 1800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR024
U 1 1 5AF15FF1
P 3600 1700
F 0 "#PWR024" H 3600 1450 50  0001 C CNN
F 1 "GND" H 3600 1550 50  0000 C CNN
F 2 "" H 3600 1700 50  0001 C CNN
F 3 "" H 3600 1700 50  0001 C CNN
	1    3600 1700
	0    -1   -1   0   
$EndComp
NoConn ~ 2400 1500
NoConn ~ 2400 1600
NoConn ~ 2400 1700
NoConn ~ 3400 2800
NoConn ~ 3400 2700
Text Notes 7350 7500 0    60   ~ 0
Ardunio Bus Control
Wire Wire Line
	6700 2500 6700 2400
Wire Wire Line
	6700 1200 6700 1300
Wire Wire Line
	8400 1900 7700 1900
Wire Wire Line
	7700 1800 8400 1800
Wire Wire Line
	8400 1700 7700 1700
Wire Wire Line
	7700 1600 8400 1600
Wire Wire Line
	8400 1500 7700 1500
Wire Wire Line
	7700 1400 8400 1400
Wire Wire Line
	7700 3200 8400 3200
Wire Wire Line
	8400 2100 7700 2100
Wire Wire Line
	7700 2000 8400 2000
Wire Wire Line
	8400 3800 7700 3800
Wire Wire Line
	7700 3700 8400 3700
Wire Wire Line
	8400 3600 7700 3600
Wire Wire Line
	7700 3500 8400 3500
Wire Wire Line
	8400 3400 7700 3400
Wire Wire Line
	7700 3300 8400 3300
Wire Wire Line
	7700 3900 8400 3900
Wire Wire Line
	6700 4300 6700 4200
Wire Wire Line
	6700 3000 6700 3100
Wire Wire Line
	7700 2300 8000 2300
Wire Wire Line
	8000 2300 8000 2750
Wire Wire Line
	8000 2750 6200 2750
Wire Wire Line
	6200 2750 6200 3200
Wire Wire Line
	6200 3200 6300 3200
Wire Wire Line
	6700 3050 6100 3050
Wire Wire Line
	6100 3050 6100 3500
Wire Wire Line
	6100 3500 6300 3500
Wire Wire Line
	6700 1250 6100 1250
Wire Wire Line
	6100 1250 6100 1700
Wire Wire Line
	6100 1700 6300 1700
Connection ~ 6700 1250
Wire Wire Line
	5800 1600 5800 5300
Wire Wire Line
	6000 2000 6300 2000
Wire Wire Line
	6000 1200 6000 5700
Wire Wire Line
	5000 1400 6300 1400
Wire Wire Line
	5900 1900 5900 5600
Wire Wire Line
	6000 800  6000 900 
Wire Wire Line
	1400 2500 2400 2500
Wire Wire Line
	3400 2600 4500 2600
Wire Wire Line
	4500 2500 3400 2500
Wire Wire Line
	3400 2400 4500 2400
Wire Wire Line
	4500 2300 3400 2300
Wire Wire Line
	3400 2200 4500 2200
Wire Wire Line
	4500 2100 3400 2100
Wire Wire Line
	2400 2300 1400 2300
Wire Wire Line
	1400 2400 2400 2400
Wire Wire Line
	3400 1800 4100 1800
Wire Wire Line
	1400 1800 2400 1800
Wire Wire Line
	3600 1700 3400 1700
NoConn ~ 3400 1600
NoConn ~ 3400 1500
$Comp
L 74HC595 U6
U 1 1 5AFAD926
P 7000 5550
F 0 "U6" H 7150 6150 50  0000 C CNN
F 1 "74HC595" H 7000 4950 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_Socket_LongPads" H 7000 5550 50  0001 C CNN
F 3 "" H 7000 5550 50  0001 C CNN
	1    7000 5550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 5AFAD92C
P 6700 6200
F 0 "#PWR025" H 6700 5950 50  0001 C CNN
F 1 "GND" H 6700 6050 50  0000 C CNN
F 2 "" H 6700 6200 50  0001 C CNN
F 3 "" H 6700 6200 50  0001 C CNN
	1    6700 6200
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR026
U 1 1 5AFAD932
P 6700 4900
F 0 "#PWR026" H 6700 4750 50  0001 C CNN
F 1 "VCC" H 6700 5050 50  0000 C CNN
F 2 "" H 6700 4900 50  0001 C CNN
F 3 "" H 6700 4900 50  0001 C CNN
	1    6700 4900
	1    0    0    -1  
$EndComp
NoConn ~ 7700 6000
Wire Wire Line
	7700 5100 8400 5100
Wire Wire Line
	7700 5400 8400 5400
Wire Wire Line
	8400 5300 7700 5300
Wire Wire Line
	7700 5200 8400 5200
Wire Wire Line
	6700 6200 6700 6100
Wire Wire Line
	6700 4900 6700 5000
Wire Wire Line
	7700 4100 8000 4100
Wire Wire Line
	8000 4100 8000 4600
Wire Wire Line
	8000 4600 6200 4600
Wire Wire Line
	6200 4600 6200 5100
Wire Wire Line
	6200 5100 6300 5100
Wire Wire Line
	6000 5700 6300 5700
Wire Wire Line
	6700 4950 6100 4950
Wire Wire Line
	6100 4950 6100 5400
Wire Wire Line
	6100 5400 6300 5400
Text HLabel 8400 5300 2    60   Output ~ 0
~MREQ
Text HLabel 8400 5400 2    60   Output ~ 0
~IORQ
Text HLabel 1400 2100 0    60   Output ~ 0
~RESET
Wire Wire Line
	2400 2100 1400 2100
Text HLabel 1400 2500 0    60   Output ~ 0
CLK
$Comp
L Nano U3
U 1 1 5AF14724
P 2900 2200
F 0 "U3" H 2600 1350 60  0000 L TNN
F 1 "Nano" V 2900 2200 60  0000 C CNN
F 2 "Modules:Arduino_Nano" H 2900 2200 60  0001 C CNN
F 3 "" H 2900 2200 60  0001 C CNN
	1    2900 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2800 1200 2800
Wire Wire Line
	1200 2800 1200 3600
Wire Wire Line
	2400 2900 1100 2900
Wire Wire Line
	1100 2900 1100 3700
Wire Wire Line
	1000 2600 1000 3800
Wire Wire Line
	5900 1900 6300 1900
Wire Wire Line
	5800 1600 6300 1600
Wire Wire Line
	5900 5600 6300 5600
Wire Wire Line
	4100 3400 6300 3400
Connection ~ 5800 3400
Wire Wire Line
	5800 5300 6300 5300
Connection ~ 6700 4950
Connection ~ 6700 3050
Wire Wire Line
	1100 3700 6300 3700
Connection ~ 5900 3700
Wire Wire Line
	1000 3800 6300 3800
Connection ~ 6000 3800
Wire Wire Line
	4100 3400 4100 2900
Wire Wire Line
	4100 2900 3400 2900
Wire Wire Line
	1200 3600 5000 3600
Wire Wire Line
	5000 3600 5000 1400
Wire Wire Line
	2400 2600 1000 2600
Connection ~ 6000 2000
NoConn ~ 7700 5500
NoConn ~ 7700 5600
NoConn ~ 7700 5700
NoConn ~ 7700 5800
NoConn ~ 3400 1900
NoConn ~ 3400 2000
$Comp
L VCC #PWR027
U 1 1 5B06F550
P 1900 6500
F 0 "#PWR027" H 1900 6350 50  0001 C CNN
F 1 "VCC" H 1900 6650 50  0000 C CNN
F 2 "" H 1900 6500 50  0001 C CNN
F 3 "" H 1900 6500 50  0001 C CNN
	1    1900 6500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 5B06F56D
P 1900 7200
F 0 "#PWR028" H 1900 6950 50  0001 C CNN
F 1 "GND" H 1900 7050 50  0000 C CNN
F 2 "" H 1900 7200 50  0001 C CNN
F 3 "" H 1900 7200 50  0001 C CNN
	1    1900 7200
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5B06F586
P 1500 6850
F 0 "C3" H 1525 6950 50  0000 L CNN
F 1 "100n" H 1525 6750 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 1538 6700 50  0001 C CNN
F 3 "" H 1500 6850 50  0001 C CNN
	1    1500 6850
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5B06F5F4
P 1900 6850
F 0 "C4" H 1925 6950 50  0000 L CNN
F 1 "100n" H 1925 6750 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 1938 6700 50  0001 C CNN
F 3 "" H 1900 6850 50  0001 C CNN
	1    1900 6850
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5B06F62E
P 2300 6850
F 0 "C5" H 2325 6950 50  0000 L CNN
F 1 "100n" H 2325 6750 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 2338 6700 50  0001 C CNN
F 3 "" H 2300 6850 50  0001 C CNN
	1    2300 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 6700 1500 6600
Wire Wire Line
	1500 6600 2300 6600
Wire Wire Line
	2300 6600 2300 6700
Wire Wire Line
	1900 6500 1900 6700
Connection ~ 1900 6600
Wire Wire Line
	1500 7000 1500 7100
Wire Wire Line
	1500 7100 2300 7100
Wire Wire Line
	2300 7100 2300 7000
Wire Wire Line
	1900 7000 1900 7200
Connection ~ 1900 7100
$Comp
L Jumper_NC_Small JP1
U 1 1 5B10F2A8
P 4200 1800
F 0 "JP1" H 4200 1880 50  0000 C CNN
F 1 "NANO PWR" H 4210 1740 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 4200 1800 50  0001 C CNN
F 3 "" H 4200 1800 50  0001 C CNN
	1    4200 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1800 4300 1800
Wire Wire Line
	2400 1900 2100 1900
Wire Wire Line
	2100 1900 2100 1100
Wire Wire Line
	2400 2000 2000 2000
Wire Wire Line
	2000 2000 2000 1100
Wire Wire Line
	2400 2200 1900 2200
Wire Wire Line
	1900 2200 1900 1100
Wire Wire Line
	2400 2700 1800 2700
Wire Wire Line
	1800 2700 1800 1100
$Comp
L CONN_01X08 J13
U 1 1 5B12586A
P 1950 900
F 0 "J13" V 2050 550 50  0000 C CNN
F 1 "NANO" V 2050 900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm" H 1950 900 50  0001 C CNN
F 3 "" H 1950 900 50  0001 C CNN
	1    1950 900 
	0    1    -1   0   
$EndComp
$Comp
L GND #PWR029
U 1 1 5B1259DE
P 1500 1200
F 0 "#PWR029" H 1500 950 50  0001 C CNN
F 1 "GND" H 1500 1050 50  0000 C CNN
F 2 "" H 1500 1200 50  0001 C CNN
F 3 "" H 1500 1200 50  0001 C CNN
	1    1500 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 1200 1700 1200
Wire Wire Line
	1700 1200 1700 1100
Wire Wire Line
	1600 1100 1600 1200
Connection ~ 1600 1200
Wire Wire Line
	3900 1200 3900 1800
Wire Wire Line
	2200 1200 3900 1200
Wire Wire Line
	2200 1200 2200 1100
Connection ~ 3900 1800
Wire Wire Line
	2300 1100 2300 1200
Connection ~ 2300 1200
$EndSCHEMATC
