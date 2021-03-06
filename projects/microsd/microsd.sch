EESchema Schematic File Version 2
LIBS:microsd-rescue
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
LIBS:custom
LIBS:microsd-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "10 jan 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 6850 4250 2    60   ~ 0
CS
Text Label 6850 4350 2    60   ~ 0
DI
Text Label 6850 4450 2    60   ~ 0
VCC
Text Label 6850 4550 2    60   ~ 0
CLK
Text Label 6850 4650 2    60   ~ 0
GND
Text Label 6850 4750 2    60   ~ 0
DO
$Comp
L C-RESCUE-microsd C2
U 1 1 5466C04B
P 4750 1950
F 0 "C2" H 4750 2050 40  0000 L CNN
F 1 "1u" H 4756 1865 40  0000 L CNN
F 2 "~" H 4788 1800 30  0000 C CNN
F 3 "~" H 4750 1950 60  0000 C CNN
	1    4750 1950
	0    -1   -1   0   
$EndComp
$Comp
L C-RESCUE-microsd C1
U 1 1 5466C058
P 4750 1700
F 0 "C1" H 4750 1800 40  0000 L CNN
F 1 "1u" H 4756 1615 40  0000 L CNN
F 2 "~" H 4788 1550 30  0000 C CNN
F 3 "~" H 4750 1700 60  0000 C CNN
	1    4750 1700
	0    -1   -1   0   
$EndComp
NoConn ~ 6850 4850
NoConn ~ 6850 4150
$Comp
L 74LS125 U1
U 2 1 5466C2C4
P 5000 4250
F 0 "U1" H 5000 4350 50  0000 L BNN
F 1 "74LS125" H 5050 4100 40  0000 L TNN
F 2 "~" H 5000 4250 60  0000 C CNN
F 3 "~" H 5000 4250 60  0000 C CNN
	2    5000 4250
	1    0    0    -1  
$EndComp
$Comp
L 74LS125 U1
U 3 1 5466C2CA
P 5000 5050
F 0 "U1" H 5000 5150 50  0000 L BNN
F 1 "74LS125" H 5050 4900 40  0000 L TNN
F 2 "~" H 5000 5050 60  0000 C CNN
F 3 "~" H 5000 5050 60  0000 C CNN
	3    5000 5050
	1    0    0    -1  
$EndComp
$Comp
L CONN_8 P1
U 1 1 5466C31A
P 2500 4000
F 0 "P1" V 2450 4000 60  0000 C CNN
F 1 "CONN_8" V 2550 4000 60  0000 C CNN
F 2 "" H 2500 4000 60  0000 C CNN
F 3 "" H 2500 4000 60  0000 C CNN
	1    2500 4000
	-1   0    0    1   
$EndComp
Text Label 2850 4350 0    60   ~ 0
5V
Text Label 2850 4150 0    60   ~ 0
3V3
Text Label 2850 4050 0    60   ~ 0
DET
Text Label 2850 3950 0    60   ~ 0
SS
Text Label 2850 3850 0    60   ~ 0
SCLK
Text Label 2850 4250 0    60   ~ 0
GND
$Comp
L CONN_13 P2
U 1 1 5466C419
P 7200 4750
F 0 "P2" V 7160 4750 60  0000 C CNN
F 1 "CONN_13" V 7270 4750 60  0000 C CNN
F 2 "" H 7200 4750 60  0000 C CNN
F 3 "" H 7200 4750 60  0000 C CNN
	1    7200 4750
	1    0    0    -1  
$EndComp
Text Label 6850 4950 2    60   ~ 0
GND
Text Label 6850 5050 2    60   ~ 0
GND
Text Label 6850 5150 2    60   ~ 0
GND
Text Label 6850 5250 2    60   ~ 0
POL
Text Label 6850 5350 2    60   ~ 0
DET
$Comp
L 74LS125 U1
U 1 1 5466C51B
P 5000 3450
F 0 "U1" H 5000 3550 50  0000 L BNN
F 1 "74LS125" H 5050 3300 40  0000 L TNN
F 2 "~" H 5000 3450 60  0000 C CNN
F 3 "~" H 5000 3450 60  0000 C CNN
	1    5000 3450
	1    0    0    -1  
$EndComp
Text Label 2850 3750 0    60   ~ 0
MOSI
$Comp
L R-RESCUE-microsd R1
U 1 1 5466CB39
P 5700 2450
F 0 "R1" V 5780 2450 40  0000 C CNN
F 1 "10k" V 5707 2451 40  0000 C CNN
F 2 "~" V 5630 2450 30  0000 C CNN
F 3 "~" H 5700 2450 30  0000 C CNN
	1    5700 2450
	0    -1   -1   0   
$EndComp
Text Label 2850 3650 0    60   ~ 0
MISO
$Comp
L 74LS125 U1
U 4 1 5466CBF1
P 5000 2600
F 0 "U1" H 5000 2700 50  0000 L BNN
F 1 "74LS125" H 5050 2450 40  0000 L TNN
F 2 "~" H 5000 2600 60  0000 C CNN
F 3 "~" H 5000 2600 60  0000 C CNN
	4    5000 2600
	-1   0    0    -1  
$EndComp
$Comp
L MCP1702 VR1
U 1 1 5466DA0C
P 5200 1150
F 0 "VR1" V 4900 1150 60  0000 C CNN
F 1 "MCP1702" V 5000 1150 60  0000 C CNN
F 2 "~" H 5200 1150 60  0000 C CNN
F 3 "~" H 5200 1150 60  0000 C CNN
	1    5200 1150
	0    1    1    0   
$EndComp
Text Notes 6100 2500 0    60   ~ 0
P/U to prevent MISO from floating when SD not plugged in.
Wire Wire Line
	2850 3950 4450 3950
Wire Wire Line
	6850 4650 6250 4650
Wire Wire Line
	6250 5350 6250 1550
Wire Wire Line
	6350 4450 6850 4450
Connection ~ 6250 4650
Wire Wire Line
	5000 4550 5000 4850
Wire Wire Line
	5000 4850 6250 4850
Connection ~ 6250 4850
Wire Wire Line
	5000 3750 5000 3850
Connection ~ 6350 4450
Wire Wire Line
	4450 3650 2850 3650
Wire Wire Line
	2850 3750 4550 3750
Wire Wire Line
	6450 5350 6850 5350
Wire Wire Line
	6850 5250 6250 5250
Connection ~ 6250 5250
Wire Wire Line
	6850 5150 6250 5150
Connection ~ 6250 5150
Wire Wire Line
	6800 5050 6250 5050
Connection ~ 6250 5050
Wire Wire Line
	6850 4950 6250 4950
Connection ~ 6250 4950
Wire Wire Line
	5000 3850 6250 3850
Wire Wire Line
	6450 5350 6450 5550
Wire Wire Line
	5200 1550 5200 1700
Wire Wire Line
	5200 1700 5300 1700
Wire Wire Line
	5100 1550 5100 2250
Wire Wire Line
	6250 1550 5300 1550
Connection ~ 6250 3850
Wire Wire Line
	2850 4050 4350 4050
Wire Wire Line
	4550 3750 4550 3450
Wire Wire Line
	2850 3850 4550 3850
Wire Wire Line
	4550 3850 4550 4250
Wire Wire Line
	4450 3950 4450 5050
Wire Wire Line
	4450 5050 4550 5050
Wire Wire Line
	6850 4550 5450 4550
Wire Wire Line
	5450 4550 5450 4250
Wire Wire Line
	5550 4250 5550 5050
Wire Wire Line
	5550 5050 5450 5050
Wire Wire Line
	5550 4250 6850 4250
Wire Wire Line
	6850 4350 5650 4350
Wire Wire Line
	5650 4350 5650 3450
Wire Wire Line
	5650 3450 5450 3450
Wire Wire Line
	4350 4050 4350 5550
Wire Wire Line
	4350 5550 6450 5550
Wire Wire Line
	4450 2600 4450 3650
Wire Wire Line
	2850 4150 3250 4150
Wire Wire Line
	3250 4250 2850 4250
Wire Wire Line
	3350 4350 2850 4350
Wire Wire Line
	6350 2250 6350 4450
Connection ~ 5000 5350
Wire Wire Line
	3250 5350 6250 5350
Wire Wire Line
	3350 2350 3350 4350
Wire Wire Line
	6850 4750 5750 4750
Wire Wire Line
	5750 4750 5750 2600
Wire Wire Line
	5750 2600 5450 2600
Wire Wire Line
	4450 2600 4550 2600
Wire Wire Line
	5000 2900 5850 2900
Wire Wire Line
	5850 2900 5850 4250
Connection ~ 5850 4250
Wire Wire Line
	3250 2250 6350 2250
Wire Wire Line
	5300 2350 3350 2350
Wire Wire Line
	5300 1700 5300 2350
Wire Wire Line
	3250 4250 3250 5450
Wire Wire Line
	3250 4150 3250 2250
Connection ~ 5100 2250
Wire Wire Line
	5450 2600 5450 2450
Wire Wire Line
	5950 2450 5950 2250
Connection ~ 5950 2250
$Comp
L R-RESCUE-microsd R2
U 1 1 5474AAA2
P 3750 3550
F 0 "R2" V 3830 3550 40  0000 C CNN
F 1 "10k" V 3757 3551 40  0000 C CNN
F 2 "~" V 3680 3550 30  0000 C CNN
F 3 "~" H 3750 3550 30  0000 C CNN
	1    3750 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 3550 4000 3950
Connection ~ 4000 3950
Text Notes 1350 3350 0    60   ~ 0
P/U to prevent SS from floating when not driven by MCU
Text Notes 6100 2650 0    60   ~ 0
Buffer to tri-state when /SS
Wire Wire Line
	3500 3550 3250 3550
Connection ~ 3250 3550
Wire Wire Line
	4950 1700 5100 1700
Connection ~ 5100 1700
Wire Wire Line
	4950 1950 5300 1950
Connection ~ 5300 1950
Wire Wire Line
	4550 1700 4450 1700
Wire Wire Line
	4450 1700 4450 2050
Wire Wire Line
	4450 1950 4550 1950
Connection ~ 4450 1950
$Comp
L GND #PWR?
U 1 1 54B1B2AA
P 4450 2050
F 0 "#PWR?" H 4450 2050 30  0001 C CNN
F 1 "GND" H 4450 1980 30  0001 C CNN
F 2 "" H 4450 2050 60  0000 C CNN
F 3 "" H 4450 2050 60  0000 C CNN
	1    4450 2050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 54B1B2B7
P 3250 5450
F 0 "#PWR?" H 3250 5450 30  0001 C CNN
F 1 "GND" H 3250 5380 30  0001 C CNN
F 2 "" H 3250 5450 60  0000 C CNN
F 3 "" H 3250 5450 60  0000 C CNN
	1    3250 5450
	1    0    0    -1  
$EndComp
Connection ~ 3250 5350
$EndSCHEMATC
