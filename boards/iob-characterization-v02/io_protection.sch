EESchema Schematic File Version 4
LIBS:iob-characterization-v02-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 6
Title "STARSHIPRAIDER I/O Characterization"
Date "2018-08-22"
Rev "0.2"
Comp "Andrew D. Zonenberg"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1300 2950 0    60   Input ~ 0
TXD0
Text HLabel 1300 3250 0    60   Input ~ 0
TXD1
Text HLabel 7300 4250 2    60   BiDi ~ 0
IO1
Text HLabel 7300 2750 2    60   BiDi ~ 0
IO0
Text HLabel 1300 3050 0    60   Output ~ 0
RX0_PROT
Text HLabel 1300 3150 0    60   Output ~ 0
RX1_PROT
Wire Wire Line
	1300 2950 1500 2950
Wire Wire Line
	1500 2950 1500 3050
Wire Wire Line
	1500 3050 1300 3050
$Comp
L device:R R15
U 1 1 5B9C4954
P 7150 2750
F 0 "R15" V 6943 2750 50  0000 C CNN
F 1 "33" V 7034 2750 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 7080 2750 50  0001 C CNN
F 3 "" H 7150 2750 50  0001 C CNN
	1    7150 2750
	0    1    1    0   
$EndComp
$Comp
L device:C C16
U 1 1 5B9C4A15
P 5450 2750
F 0 "C16" V 5198 2750 50  0000 C CNN
F 1 "GCM155R71C104KA55" V 5289 2750 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 5488 2600 50  0001 C CNN
F 3 "" H 5450 2750 50  0001 C CNN
	1    5450 2750
	0    1    1    0   
$EndComp
$Comp
L special-azonenberg:PUSB3FA2Z D1
U 1 1 5B9C6A37
P 3200 3400
F 0 "D1" H 3450 4297 60  0000 C CNN
F 1 "PUSB3FA2Z" H 3450 4191 60  0000 C CNN
F 2 "azonenberg_pcb:DFN_10_0.5MM_2.5x1MM" H 3200 3400 60  0001 C CNN
F 3 "" H 3200 3400 60  0001 C CNN
	1    3200 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2750 2950 2750
Wire Wire Line
	2950 2750 2950 2850
Wire Wire Line
	2950 2850 3100 2850
Wire Wire Line
	1500 3050 2200 3050
Connection ~ 1500 3050
Wire Wire Line
	1300 3150 1500 3150
Wire Wire Line
	1300 3250 1500 3250
Wire Wire Line
	1500 3250 1500 3150
Connection ~ 1500 3150
Wire Wire Line
	1500 3150 2200 3150
Text Label 3900 3050 0    60   ~ 0
TXD0_RAW
Text Label 3900 3150 0    60   ~ 0
TXD1_RAW
Wire Wire Line
	3900 3150 3800 3150
Wire Wire Line
	3900 3050 3800 3050
NoConn ~ 3100 3250
NoConn ~ 3100 3350
NoConn ~ 3800 3250
NoConn ~ 3800 3350
Text Label 5000 2750 2    60   ~ 0
TXD0_RAW
Wire Wire Line
	5000 2750 5300 2750
Wire Wire Line
	5000 2750 5000 3450
$Comp
L device:D_Schottky D3
U 1 1 5B9DD430
P 5650 3600
F 0 "D3" V 5604 3679 50  0000 L CNN
F 1 "‎NSR0240HT1G‎" V 5695 3679 50  0000 L CNN
F 2 "azonenberg_pcb:SOD323" H 5650 3600 50  0001 C CNN
F 3 "" H 5650 3600 50  0001 C CNN
	1    5650 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 3450 5650 3450
$Comp
L device:D_Schottky D2
U 1 1 5B9DD60F
P 5650 3300
F 0 "D2" V 5604 3379 50  0000 L CNN
F 1 "‎NSR0240HT1G‎" V 5695 3379 50  0000 L CNN
F 2 "azonenberg_pcb:SOD323" H 5650 3300 50  0001 C CNN
F 3 "" H 5650 3300 50  0001 C CNN
	1    5650 3300
	0    1    1    0   
$EndComp
Connection ~ 5650 3450
Text Label 5550 3750 2    60   ~ 0
GND
Wire Wire Line
	5550 3750 5650 3750
Wire Wire Line
	5550 3150 5650 3150
$Comp
L device:L L1
U 1 1 5B9DED1F
P 5250 3450
F 0 "L1" V 5072 3450 50  0000 C CNN
F 1 "‎MMZ1005A222ET000‎" V 5350 3250 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 5250 3450 50  0001 C CNN
F 3 "" H 5250 3450 50  0001 C CNN
	1    5250 3450
	0    1    1    0   
$EndComp
$Comp
L device:L L2
U 1 1 5B9DF073
P 6850 3450
F 0 "L2" V 6672 3450 50  0000 C CNN
F 1 "‎MMZ1005A222ET000‎" V 6950 3450 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 6850 3450 50  0001 C CNN
F 3 "" H 6850 3450 50  0001 C CNN
	1    6850 3450
	0    1    1    0   
$EndComp
Text Notes 8050 2700 0    60   ~ 0
Typical 5 ohms per analog switch @ 5V Vdd\nWe have 2 in series so 10 ohm series R\nbetween level shifter and TXD*
Text Notes 8050 3050 0    60   ~ 0
Calculated driver impedance is\n* 275 ohms (1.2 - 3.3V)\n* 137 ohms (3.3 - 5V)\n
$Comp
L device:R R16
U 1 1 5B9DF9E1
P 6300 3450
F 0 "R16" V 6250 3650 50  0000 C CNN
F 1 "100" V 6300 3450 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 6230 3450 50  0001 C CNN
F 3 "" H 6300 3450 50  0001 C CNN
	1    6300 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 3450 5650 3450
Wire Wire Line
	5000 3450 5100 3450
Wire Wire Line
	6700 3450 6450 3450
Wire Wire Line
	5600 2750 7000 2750
Wire Wire Line
	7000 2750 7000 3450
Connection ~ 7000 2750
$Comp
L device:R R23
U 1 1 5BA07DF4
P 7150 4250
F 0 "R23" V 6943 4250 50  0000 C CNN
F 1 "33" V 7034 4250 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 7080 4250 50  0001 C CNN
F 3 "" H 7150 4250 50  0001 C CNN
	1    7150 4250
	0    1    1    0   
$EndComp
$Comp
L device:C C20
U 1 1 5BA07DFA
P 5450 4250
F 0 "C20" V 5198 4250 50  0000 C CNN
F 1 "GCM155R71C104KA55" V 5289 4250 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 5488 4100 50  0001 C CNN
F 3 "" H 5450 4250 50  0001 C CNN
	1    5450 4250
	0    1    1    0   
$EndComp
Text Label 5000 4250 2    60   ~ 0
TXD1_RAW
Wire Wire Line
	5000 4250 5300 4250
Wire Wire Line
	5000 4250 5000 4950
$Comp
L device:D_Schottky D9
U 1 1 5BA07E03
P 5650 5100
F 0 "D9" V 5604 5179 50  0000 L CNN
F 1 "‎NSR0240HT1G‎" V 5695 5179 50  0000 L CNN
F 2 "azonenberg_pcb:SOD323" H 5650 5100 50  0001 C CNN
F 3 "" H 5650 5100 50  0001 C CNN
	1    5650 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 4950 5650 4950
$Comp
L device:D_Schottky D8
U 1 1 5BA07E0A
P 5650 4800
F 0 "D8" V 5604 4879 50  0000 L CNN
F 1 "‎NSR0240HT1G‎" V 5695 4879 50  0000 L CNN
F 2 "azonenberg_pcb:SOD323" H 5650 4800 50  0001 C CNN
F 3 "" H 5650 4800 50  0001 C CNN
	1    5650 4800
	0    1    1    0   
$EndComp
Connection ~ 5650 4950
Text Label 5550 5250 2    60   ~ 0
GND
Wire Wire Line
	5550 5250 5650 5250
Text Label 5550 4650 2    60   ~ 0
VCCO
Wire Wire Line
	5550 4650 5650 4650
$Comp
L device:L L3
U 1 1 5BA07E15
P 5250 4950
F 0 "L3" V 5072 4950 50  0000 C CNN
F 1 "‎MMZ1005A222ET000‎" V 5350 4650 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 5250 4950 50  0001 C CNN
F 3 "" H 5250 4950 50  0001 C CNN
	1    5250 4950
	0    1    1    0   
$EndComp
$Comp
L device:L L4
U 1 1 5BA07E1B
P 6850 4950
F 0 "L4" V 6672 4950 50  0000 C CNN
F 1 "‎MMZ1005A222ET000‎" V 6950 5000 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 6850 4950 50  0001 C CNN
F 3 "" H 6850 4950 50  0001 C CNN
	1    6850 4950
	0    1    1    0   
$EndComp
$Comp
L device:R R22
U 1 1 5BA07E21
P 6300 4950
F 0 "R22" V 6400 4950 50  0000 C CNN
F 1 "100" V 6300 4950 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 6230 4950 50  0001 C CNN
F 3 "" H 6300 4950 50  0001 C CNN
	1    6300 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 4950 5650 4950
Wire Wire Line
	5000 4950 5100 4950
Wire Wire Line
	6700 4950 6450 4950
Wire Wire Line
	5600 4250 7000 4250
Wire Wire Line
	7000 4250 7000 4950
Connection ~ 7000 4250
Text HLabel 2950 2750 0    60   Input ~ 0
GND
Text Notes 7750 3400 0    60   ~ 0
Max short circuit is +5V out into -12V.\n17V potential, 133 ohm series R is 127 mA
$Comp
L special-azonenberg:JUMPER_0402_SPDT J2
U 1 1 5B76D30E
P 1900 3000
F 0 "J2" H 1881 3587 60  0000 C CNN
F 1 "JUMPER_0402_SPDT" H 1881 3481 60  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_JUMPER" H 1900 3000 60  0001 C CNN
F 3 "" H 1900 3000 60  0000 C CNN
	1    1900 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 2900 2200 3050
Wire Wire Line
	2200 2800 2400 2800
Wire Wire Line
	2400 2800 2400 3050
Wire Wire Line
	2400 3050 3100 3050
$Comp
L special-azonenberg:JUMPER_0402_SPDT J4
U 1 1 5B76DEAD
P 1900 3850
F 0 "J4" H 1881 4437 60  0000 C CNN
F 1 "JUMPER_0402_SPDT" H 1881 4331 60  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_JUMPER" H 1900 3850 60  0001 C CNN
F 3 "" H 1900 3850 60  0000 C CNN
	1    1900 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3150 2200 3550
Wire Wire Line
	2200 3650 2400 3650
Wire Wire Line
	2400 3650 2400 3150
Wire Wire Line
	2400 3150 3100 3150
$Comp
L conn:CONN_COAXIAL J6
U 1 1 5B76FD17
P 2500 2700
F 0 "J6" H 2600 2584 50  0000 L CNN
F 1 "CONN_COAXIAL" H 2600 2675 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_MMCX_LINX_CONNMMCX002SMD" H 2500 2700 50  0001 C CNN
F 3 "" H 2500 2700 50  0001 C CNN
	1    2500 2700
	1    0    0    1   
$EndComp
Wire Wire Line
	2350 2700 2200 2700
Text Label 2500 2500 0    60   ~ 0
GND
$Comp
L conn:CONN_COAXIAL J5
U 1 1 5B77143F
P 2350 3750
F 0 "J5" H 2450 3726 50  0000 L CNN
F 1 "CONN_COAXIAL" H 2450 3635 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_MMCX_LINX_CONNMMCX002SMD" H 2350 3750 50  0001 C CNN
F 3 "" H 2350 3750 50  0001 C CNN
	1    2350 3750
	1    0    0    -1  
$EndComp
Text Label 2350 3950 2    60   ~ 0
GND
Text Label 3050 3150 2    60   ~ 0
TXD1_RAW
Text Label 3050 3050 2    60   ~ 0
TXD0_RAW
Text HLabel 5550 3150 0    60   Input ~ 0
VCCO
$Comp
L device:C C?
U 1 1 5B79C7D7
P 2350 4800
AR Path="/5B7E4C7E/5B79C7D7" Ref="C?"  Part="1" 
AR Path="/5B8504E7/5B79C7D7" Ref="C41"  Part="1" 
F 0 "C41" H 2465 4846 50  0000 L CNN
F 1 "0.47 uF" H 2465 4755 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 2388 4650 50  0001 C CNN
F 3 "" H 2350 4800 50  0001 C CNN
	1    2350 4800
	1    0    0    -1  
$EndComp
Text Notes 2300 4600 0    60   ~ 0
Layer change caps
Text Label 2250 4650 2    60   ~ 0
VCCO
Wire Wire Line
	2250 4650 2350 4650
Text Label 2250 4950 2    60   ~ 0
GND
Wire Wire Line
	2250 4950 2350 4950
$Comp
L device:C C?
U 1 1 5B79DCC0
P 2950 4800
AR Path="/5B7E4C7E/5B79DCC0" Ref="C?"  Part="1" 
AR Path="/5B8504E7/5B79DCC0" Ref="C42"  Part="1" 
F 0 "C42" H 3065 4846 50  0000 L CNN
F 1 "0.47 uF" H 3065 4755 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 2988 4650 50  0001 C CNN
F 3 "" H 2950 4800 50  0001 C CNN
	1    2950 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 4650 2950 4650
Connection ~ 2350 4650
Text HLabel 2950 4950 0    60   Input ~ 0
2V5
$Comp
L device:C C?
U 1 1 5B7A6757
P 3550 4800
AR Path="/5B7E4C7E/5B7A6757" Ref="C?"  Part="1" 
AR Path="/5B8504E7/5B7A6757" Ref="C43"  Part="1" 
F 0 "C43" H 3665 4846 50  0000 L CNN
F 1 "0.47 uF" H 3665 4755 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 3588 4650 50  0001 C CNN
F 3 "" H 3550 4800 50  0001 C CNN
	1    3550 4800
	1    0    0    -1  
$EndComp
Text Label 3550 4650 2    60   ~ 0
GND
Wire Wire Line
	2950 4950 3550 4950
$EndSCHEMATC
