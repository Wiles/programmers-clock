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
LIBS:74xgxx
LIBS:ac-dc
LIBS:actel
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos_ieee
LIBS:dc-dc
LIBS:diode
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:hc11
LIBS:ir
LIBS:Lattice
LIBS:leds
LIBS:logo
LIBS:maxim
LIBS:mechanical
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic32mcu
LIBS:modules
LIBS:motor_drivers
LIBS:motors
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:Oscillators
LIBS:Power_Management
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:relays
LIBS:rfcom
LIBS:sensors
LIBS:silabs
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:transf
LIBS:triac_thyristor
LIBS:ttl_ieee
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:zetex
LIBS:Zilog
LIBS:ESP8266
LIBS:st7920
LIBS:mcp2200
LIBS:programmersclock-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L ESP-12E U3
U 1 1 59486EC5
P 4950 4950
F 0 "U3" H 4950 4850 50  0000 C CNN
F 1 "ESP-12E" H 4950 5050 50  0000 C CNN
F 2 "ESP8266:ESP-12E_SMD" H 4950 4950 50  0001 C CNN
F 3 "" H 4950 4950 50  0001 C CNN
	1    4950 4950
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT1
U 1 1 5948713B
P 2050 2550
F 0 "BT1" H 2150 2650 50  0000 L CNN
F 1 "CR1220" H 2150 2550 50  0000 L CNN
F 2 "Battery_Holders_extra:BatteryHolder_CoinCell_Keystone_3000" V 2050 2610 50  0001 C CNN
F 3 "" V 2050 2610 50  0001 C CNN
	1    2050 2550
	0    -1   -1   0   
$EndComp
$Comp
L Crystal Y1
U 1 1 594871DE
P 2500 3150
F 0 "Y1" H 2500 3300 50  0000 C CNN
F 1 "32.768 kHz" H 2500 3000 50  0000 C CNN
F 2 "Crystals:Crystal_SMD_3215-2pin_3.2x1.5mm" H 2500 3150 50  0001 C CNN
F 3 "" H 2500 3150 50  0001 C CNN
	1    2500 3150
	0    -1   -1   0   
$EndComp
Text GLabel 1100 2950 0    39   Input ~ 0
SCL
Text GLabel 1100 3050 0    39   Input ~ 0
SDA
NoConn ~ 5200 5850
NoConn ~ 5100 5850
NoConn ~ 5000 5850
NoConn ~ 4900 5850
NoConn ~ 4800 5850
NoConn ~ 4700 5850
$Comp
L GND #PWR01
U 1 1 594877EA
P 1300 6650
F 0 "#PWR01" H 1300 6400 50  0001 C CNN
F 1 "GND" H 1300 6500 50  0000 C CNN
F 2 "" H 1300 6650 50  0001 C CNN
F 3 "" H 1300 6650 50  0001 C CNN
	1    1300 6650
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 59487820
P 1650 6450
F 0 "C2" H 1660 6520 50  0000 L CNN
F 1 "10uF" H 1660 6370 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 1650 6450 50  0001 C CNN
F 3 "" H 1650 6450 50  0001 C CNN
	1    1650 6450
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 5948784B
P 950 6450
F 0 "C1" H 960 6520 50  0000 L CNN
F 1 "10 uF" H 960 6370 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 950 6450 50  0001 C CNN
F 3 "" H 950 6450 50  0001 C CNN
	1    950  6450
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR02
U 1 1 5948794C
P 1650 6150
F 0 "#PWR02" H 1650 6000 50  0001 C CNN
F 1 "+3V3" H 1650 6290 50  0000 C CNN
F 2 "" H 1650 6150 50  0001 C CNN
F 3 "" H 1650 6150 50  0001 C CNN
	1    1650 6150
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR03
U 1 1 59487A5C
P 3850 5250
F 0 "#PWR03" H 3850 5100 50  0001 C CNN
F 1 "+3V3" H 3850 5390 50  0000 C CNN
F 2 "" H 3850 5250 50  0001 C CNN
F 3 "" H 3850 5250 50  0001 C CNN
	1    3850 5250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 59487BFB
P 5900 5450
F 0 "#PWR04" H 5900 5200 50  0001 C CNN
F 1 "GND" H 5900 5300 50  0000 C CNN
F 2 "" H 5900 5450 50  0001 C CNN
F 3 "" H 5900 5450 50  0001 C CNN
	1    5900 5450
	1    0    0    -1  
$EndComp
Text GLabel 5950 5050 2    39   Input ~ 0
SDA
Text GLabel 5950 5150 2    39   Input ~ 0
SCL
$Comp
L LM1117-3.3 U2
U 1 1 5949CF22
P 1300 6250
F 0 "U2" H 1400 6000 50  0000 C CNN
F 1 "LM1117-3.3" H 1300 6500 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 1300 6250 50  0001 C CNN
F 3 "" H 1300 6250 50  0001 C CNN
	1    1300 6250
	1    0    0    -1  
$EndComp
$Comp
L MCP7940N U1
U 1 1 594E6D51
P 1700 3150
F 0 "U1" H 1450 3500 50  0000 C CNN
F 1 "MCP7940N" H 1950 2800 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 1700 3150 50  0001 C CNN
F 3 "" H 1700 3150 50  0001 C CNN
	1    1700 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 594E730B
P 1700 3650
F 0 "#PWR05" H 1700 3400 50  0001 C CNN
F 1 "GND" H 1700 3500 50  0000 C CNN
F 2 "" H 1700 3650 50  0001 C CNN
F 3 "" H 1700 3650 50  0001 C CNN
	1    1700 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 594E7404
P 2200 2650
F 0 "#PWR06" H 2200 2400 50  0001 C CNN
F 1 "GND" H 2200 2500 50  0000 C CNN
F 2 "" H 2200 2650 50  0001 C CNN
F 3 "" H 2200 2650 50  0001 C CNN
	1    2200 2650
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR07
U 1 1 594E746C
P 1700 2650
F 0 "#PWR07" H 1700 2500 50  0001 C CNN
F 1 "+3.3V" H 1700 2790 50  0000 C CNN
F 2 "" H 1700 2650 50  0001 C CNN
F 3 "" H 1700 2650 50  0001 C CNN
	1    1700 2650
	1    0    0    -1  
$EndComp
Text GLabel 1100 3250 0    39   Input ~ 0
MFP
$Comp
L +5V #PWR08
U 1 1 594E8942
P 950 6150
F 0 "#PWR08" H 950 6000 50  0001 C CNN
F 1 "+5V" H 950 6290 50  0000 C CNN
F 2 "" H 950 6150 50  0001 C CNN
F 3 "" H 950 6150 50  0001 C CNN
	1    950  6150
	1    0    0    -1  
$EndComp
Text GLabel 3950 4650 0    39   Input ~ 0
RST
Text GLabel 5950 4650 2    39   Input ~ 0
TX
Text GLabel 5950 4750 2    39   Input ~ 0
RX
$Comp
L ST7920 DS1
U 1 1 594EA7E5
P 4650 2100
F 0 "DS1" H 3500 2750 50  0000 C CNN
F 1 "ST7920" H 5700 2750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x20_Pitch2.54mm" H 4650 1900 50  0001 C CIN
F 3 "" H 4650 2100 50  0001 C CNN
	1    4650 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 594EAA5E
P 3550 2800
F 0 "#PWR09" H 3550 2550 50  0001 C CNN
F 1 "GND" H 3550 2650 50  0000 C CNN
F 2 "" H 3550 2800 50  0001 C CNN
F 3 "" H 3550 2800 50  0001 C CNN
	1    3550 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 594EAA86
P 5750 2800
F 0 "#PWR010" H 5750 2550 50  0001 C CNN
F 1 "GND" H 5750 2650 50  0000 C CNN
F 2 "" H 5750 2800 50  0001 C CNN
F 3 "" H 5750 2800 50  0001 C CNN
	1    5750 2800
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR011
U 1 1 594EAE13
P 3300 2750
F 0 "#PWR011" H 3300 2600 50  0001 C CNN
F 1 "+3.3V" H 3300 2890 50  0000 C CNN
F 2 "" H 3300 2750 50  0001 C CNN
F 3 "" H 3300 2750 50  0001 C CNN
	1    3300 2750
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR012
U 1 1 594EB08C
P 5950 2750
F 0 "#PWR012" H 5950 2600 50  0001 C CNN
F 1 "+3.3V" H 5950 2890 50  0000 C CNN
F 2 "" H 5950 2750 50  0001 C CNN
F 3 "" H 5950 2750 50  0001 C CNN
	1    5950 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 594EB169
P 5250 2800
F 0 "#PWR013" H 5250 2550 50  0001 C CNN
F 1 "GND" H 5250 2650 50  0000 C CNN
F 2 "" H 5250 2800 50  0001 C CNN
F 3 "" H 5250 2800 50  0001 C CNN
	1    5250 2800
	1    0    0    -1  
$EndComp
$Comp
L R_Small R1
U 1 1 594EC350
P 1150 2800
F 0 "R1" H 1180 2820 50  0000 L CNN
F 1 "10k" H 1180 2760 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1150 2800 50  0001 C CNN
F 3 "" H 1150 2800 50  0001 C CNN
	1    1150 2800
	1    0    0    -1  
$EndComp
$Comp
L R_Small R2
U 1 1 594EC37F
P 1250 2600
F 0 "R2" H 1280 2620 50  0000 L CNN
F 1 "10k" H 1280 2560 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 1250 2600 50  0001 C CNN
F 3 "" H 1250 2600 50  0001 C CNN
	1    1250 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 6550 1300 6650
Wire Wire Line
	1000 6250 950  6250
Wire Wire Line
	950  6150 950  6350
Wire Wire Line
	1600 6250 1650 6250
Wire Wire Line
	1650 6150 1650 6350
Wire Wire Line
	1650 6600 1650 6550
Wire Wire Line
	950  6600 1650 6600
Connection ~ 1300 6600
Wire Wire Line
	950  6600 950  6550
Connection ~ 950  6250
Connection ~ 1650 6250
Wire Wire Line
	3850 5350 4050 5350
Wire Wire Line
	5850 5350 5900 5350
Wire Wire Line
	5900 5350 5900 5450
Wire Wire Line
	5950 5050 5850 5050
Wire Wire Line
	5950 5150 5850 5150
Wire Wire Line
	1100 2950 1300 2950
Wire Wire Line
	1100 3050 1300 3050
Wire Wire Line
	2100 3050 2150 3050
Wire Wire Line
	2150 3050 2150 3000
Wire Wire Line
	2150 3000 2700 3000
Wire Wire Line
	2150 3300 2700 3300
Wire Wire Line
	2150 3300 2150 3250
Wire Wire Line
	2150 3250 2100 3250
Wire Wire Line
	1700 3550 1700 3650
Wire Wire Line
	1850 2550 1800 2550
Wire Wire Line
	1800 2550 1800 2750
Wire Wire Line
	2150 2550 2200 2550
Wire Wire Line
	2200 2550 2200 2650
Wire Wire Line
	1700 2650 1700 2750
Wire Wire Line
	1100 3250 1300 3250
Wire Wire Line
	5950 4650 5850 4650
Wire Wire Line
	5950 4750 5850 4750
Wire Wire Line
	4050 4650 3950 4650
Wire Wire Line
	5750 2700 5750 2800
Wire Wire Line
	3550 2700 3550 2800
Wire Wire Line
	3650 2700 3650 2750
Wire Wire Line
	3650 2750 3300 2750
Wire Wire Line
	5950 2750 5650 2750
Wire Wire Line
	5650 2750 5650 2700
Wire Wire Line
	5250 2700 5250 2800
Wire Wire Line
	5850 4850 6150 4850
Wire Wire Line
	6150 4850 6150 3500
Wire Wire Line
	6150 3500 3850 3500
Wire Wire Line
	3850 3500 3850 2700
Wire Wire Line
	3950 2700 3950 3400
Wire Wire Line
	3950 3400 6250 3400
Wire Wire Line
	6250 3400 6250 4950
Wire Wire Line
	6250 4950 5850 4950
Wire Wire Line
	4050 2700 4050 3300
Wire Wire Line
	4050 3300 6400 3300
Wire Wire Line
	6400 3300 6400 5250
Wire Wire Line
	6400 5250 5850 5250
Wire Wire Line
	4050 4850 4000 4850
Wire Wire Line
	4000 4850 4000 5350
Connection ~ 4000 5350
Wire Wire Line
	1150 2900 1150 3050
Connection ~ 1150 3050
Wire Wire Line
	1250 2700 1250 2950
Connection ~ 1250 2950
Wire Wire Line
	1250 2450 1250 2500
$Comp
L SW_Push SW1
U 1 1 594ECB1C
P 3750 4450
F 0 "SW1" H 3800 4550 50  0000 L CNN
F 1 "RST" H 3750 4390 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_EVQP7C" H 3750 4650 50  0001 C CNN
F 3 "" H 3750 4650 50  0001 C CNN
	1    3750 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 4450 4000 4450
Wire Wire Line
	4000 4450 4000 4650
Connection ~ 4000 4650
$Comp
L C_Small C3
U 1 1 594ECEBA
P 2800 3000
F 0 "C3" H 2810 3070 50  0000 L CNN
F 1 "9 pF" H 2810 2920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2800 3000 50  0001 C CNN
F 3 "" H 2800 3000 50  0001 C CNN
	1    2800 3000
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C4
U 1 1 594ECF13
P 2800 3300
F 0 "C4" H 2810 3370 50  0000 L CNN
F 1 "9 pF" H 2810 3220 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2800 3300 50  0001 C CNN
F 3 "" H 2800 3300 50  0001 C CNN
	1    2800 3300
	0    -1   -1   0   
$EndComp
Connection ~ 2500 3300
Connection ~ 2500 3000
Wire Wire Line
	2900 3000 3000 3000
Wire Wire Line
	3000 3000 3000 3300
Wire Wire Line
	3000 3300 2900 3300
Wire Wire Line
	3000 3150 3100 3150
Wire Wire Line
	3100 3150 3100 3250
Connection ~ 3000 3150
$Comp
L GND #PWR014
U 1 1 594ED0EB
P 3100 3250
F 0 "#PWR014" H 3100 3000 50  0001 C CNN
F 1 "GND" H 3100 3100 50  0000 C CNN
F 2 "" H 3100 3250 50  0001 C CNN
F 3 "" H 3100 3250 50  0001 C CNN
	1    3100 3250
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR015
U 1 1 594EDA36
P 1150 2450
F 0 "#PWR015" H 1150 2300 50  0001 C CNN
F 1 "+3.3V" H 1150 2590 50  0000 C CNN
F 2 "" H 1150 2450 50  0001 C CNN
F 3 "" H 1150 2450 50  0001 C CNN
	1    1150 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2700 1150 2450
Wire Wire Line
	1150 2450 1250 2450
Wire Wire Line
	3850 5250 3850 5350
$Comp
L GND #PWR016
U 1 1 594EE821
P 3450 4550
F 0 "#PWR016" H 3450 4300 50  0001 C CNN
F 1 "GND" H 3450 4400 50  0000 C CNN
F 2 "" H 3450 4550 50  0001 C CNN
F 3 "" H 3450 4550 50  0001 C CNN
	1    3450 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 4550 3450 4450
Wire Wire Line
	3450 4450 3550 4450
$Comp
L GND #PWR017
U 1 1 595044A9
P 9200 3850
F 0 "#PWR017" H 9200 3600 50  0001 C CNN
F 1 "GND" H 9200 3700 50  0000 C CNN
F 2 "" H 9200 3850 50  0001 C CNN
F 3 "" H 9200 3850 50  0001 C CNN
	1    9200 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 3600 9200 3600
Wire Wire Line
	9200 3600 9200 3850
Wire Wire Line
	9300 3700 9200 3700
Connection ~ 9200 3700
$Comp
L +5V #PWR018
U 1 1 595046F4
P 10150 4000
F 0 "#PWR018" H 10150 3850 50  0001 C CNN
F 1 "+5V" H 10150 4140 50  0000 C CNN
F 2 "" H 10150 4000 50  0001 C CNN
F 3 "" H 10150 4000 50  0001 C CNN
	1    10150 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 4000 9900 4100
Wire Wire Line
	9900 4100 10150 4100
Wire Wire Line
	10150 4100 10150 4000
$Comp
L MCP2200 IC1
U 1 1 59557C4F
P 8350 4950
F 0 "IC1" H 8400 5500 60  0000 C CNN
F 1 "MCP2200" V 8350 4700 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-20W_7.5x12.8mm_Pitch1.27mm" H 8350 4950 60  0001 C CNN
F 3 "" H 8350 4950 60  0001 C CNN
	1    8350 4950
	1    0    0    -1  
$EndComp
$Comp
L Crystal Y2
U 1 1 59557FE0
P 7250 4650
F 0 "Y2" H 7250 4800 50  0000 C CNN
F 1 "12 MHz" H 7250 4500 50  0000 C CNN
F 2 "Crystals:Crystal_SMD_3225-4pin_3.2x2.5mm" H 7250 4650 50  0001 C CNN
F 3 "" H 7250 4650 50  0001 C CNN
	1    7250 4650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7050 4500 7550 4500
Wire Wire Line
	7550 4500 7550 4600
Wire Wire Line
	7550 4600 7700 4600
Wire Wire Line
	7700 4700 7550 4700
Wire Wire Line
	7550 4700 7550 4800
Wire Wire Line
	7550 4800 7050 4800
$Comp
L C_Small C5
U 1 1 59558226
P 6950 4500
F 0 "C5" H 6960 4570 50  0000 L CNN
F 1 "15 pF" H 6960 4420 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6950 4500 50  0001 C CNN
F 3 "" H 6950 4500 50  0001 C CNN
	1    6950 4500
	0    1    1    0   
$EndComp
$Comp
L C_Small C6
U 1 1 59558271
P 6950 4800
F 0 "C6" H 6960 4870 50  0000 L CNN
F 1 "15 pF" H 6960 4720 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6950 4800 50  0001 C CNN
F 3 "" H 6950 4800 50  0001 C CNN
	1    6950 4800
	0    1    1    0   
$EndComp
Connection ~ 7250 4500
Connection ~ 7250 4800
Wire Wire Line
	6850 4500 6750 4500
Wire Wire Line
	6750 4500 6750 4950
Wire Wire Line
	6750 4800 6850 4800
$Comp
L GND #PWR019
U 1 1 59558415
P 6750 4950
F 0 "#PWR019" H 6750 4700 50  0001 C CNN
F 1 "GND" H 6750 4800 50  0000 C CNN
F 2 "" H 6750 4950 50  0001 C CNN
F 3 "" H 6750 4950 50  0001 C CNN
	1    6750 4950
	1    0    0    -1  
$EndComp
Connection ~ 6750 4800
$Comp
L USB_OTG J3
U 1 1 59503DEE
P 9700 3700
F 0 "J3" H 9500 4150 50  0000 L CNN
F 1 "USB_OTG" H 9500 4050 50  0000 L CNN
F 2 "Connectors_USB:USB_Micro-B_Vertical_Molex-105133-0001" H 9850 3650 50  0001 C CNN
F 3 "" H 9850 3650 50  0001 C CNN
	1    9700 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	9600 4000 9600 4700
Wire Wire Line
	9600 4700 9000 4700
Wire Wire Line
	9700 4000 9700 4600
Wire Wire Line
	9700 4600 9000 4600
Text GLabel 9150 5300 2    60   Input ~ 0
RX
Wire Wire Line
	9000 5300 9150 5300
Text GLabel 7550 5400 0    60   Input ~ 0
TX
Wire Wire Line
	7550 5400 7700 5400
NoConn ~ 7700 4900
NoConn ~ 7700 5000
NoConn ~ 7700 5100
NoConn ~ 7700 5200
NoConn ~ 7700 5300
NoConn ~ 9000 4900
NoConn ~ 9000 5000
NoConn ~ 9000 5100
Wire Wire Line
	7700 4300 7700 4500
$Comp
L GND #PWR020
U 1 1 59559D40
P 9250 4900
F 0 "#PWR020" H 9250 4650 50  0001 C CNN
F 1 "GND" H 9250 4750 50  0000 C CNN
F 2 "" H 9250 4900 50  0001 C CNN
F 3 "" H 9250 4900 50  0001 C CNN
	1    9250 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 4500 9250 4500
Wire Wire Line
	9250 4500 9250 4900
$Comp
L +3.3V #PWR021
U 1 1 5955A38E
P 7700 4300
F 0 "#PWR021" H 7700 4150 50  0001 C CNN
F 1 "+3.3V" H 7700 4440 50  0000 C CNN
F 2 "" H 7700 4300 50  0001 C CNN
F 3 "" H 7700 4300 50  0001 C CNN
	1    7700 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 4800 9100 4800
Wire Wire Line
	9100 4800 9100 4350
Wire Wire Line
	9100 4350 7700 4350
Connection ~ 7700 4350
$EndSCHEMATC
