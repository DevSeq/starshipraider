EESchema Schematic File Version 4
LIBS:entry-afe-characterization-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 8
Title "Entry-Level Oscilloscope AFE Characterization Platform"
Date "2020-03-29"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 ""
Comment2 "Andrew D. Zonenberg"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L analog-azonenberg:LTC2664 U5
U 1 1 5E7E9299
P 3450 5250
F 0 "U5" H 3950 7825 50  0000 C CNN
F 1 "LTC2664" H 3950 7734 50  0000 C CNN
F 2 "azonenberg_pcb:QFN_32_0.5MM_5x5MM" H 3450 5250 50  0001 C CNN
F 3 "" H 3450 5250 50  0001 C CNN
	1    3450 5250
	1    0    0    -1  
$EndComp
Text HLabel 3350 4400 0    50   Input ~ 0
DAC_CS_N
Text HLabel 3350 4500 0    50   Input ~ 0
DAC_LDAC
Text HLabel 3350 4600 0    50   Input ~ 0
DAC_SCK
Text HLabel 3350 4800 0    50   Input ~ 0
DAC_MOSI
NoConn ~ 3350 4700
Text Label 3350 4900 2    50   ~ 0
GND
Text HLabel 3350 5100 0    50   Input ~ 0
DAC_RST_N
Text HLabel 3350 3000 0    50   Input ~ 0
5V0_P
Text HLabel 3350 2900 0    50   Input ~ 0
3V3
Wire Wire Line
	3350 3000 3350 3100
$Comp
L device:C C20
U 1 1 5E7EBB48
P 3450 2200
F 0 "C20" H 3565 2246 50  0000 L CNN
F 1 "1 uF" H 3565 2155 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0603_CAP_NOSILK" H 3488 2050 50  0001 C CNN
F 3 "" H 3450 2200 50  0001 C CNN
	1    3450 2200
	1    0    0    -1  
$EndComp
Text Label 3450 2350 2    50   ~ 0
GND
Text Label 3450 2050 2    50   ~ 0
5V0_P
Text HLabel 3350 3200 0    50   Input ~ 0
5V0_N
Wire Wire Line
	3350 3200 3350 3300
$Comp
L device:C C22
U 1 1 5E7ED99B
P 4500 2200
F 0 "C22" H 4615 2246 50  0000 L CNN
F 1 "1 uF" H 4615 2155 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0603_CAP_NOSILK" H 4538 2050 50  0001 C CNN
F 3 "" H 4500 2200 50  0001 C CNN
	1    4500 2200
	1    0    0    -1  
$EndComp
Text Label 4500 2050 2    50   ~ 0
5V0_N
Wire Wire Line
	3950 2350 3450 2350
$Comp
L device:C C21
U 1 1 5E7EE522
P 3950 2200
F 0 "C21" H 4065 2246 50  0000 L CNN
F 1 "1 uF" H 4065 2155 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0603_CAP_NOSILK" H 3988 2050 50  0001 C CNN
F 3 "" H 3950 2200 50  0001 C CNN
	1    3950 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2050 3450 2050
Wire Wire Line
	3950 2350 4500 2350
Connection ~ 3950 2350
$Comp
L device:C C23
U 1 1 5E7EEDB2
P 5000 2200
F 0 "C23" H 5115 2246 50  0000 L CNN
F 1 "0.1 uF" H 5115 2155 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 5038 2050 50  0001 C CNN
F 3 "" H 5000 2200 50  0001 C CNN
	1    5000 2200
	1    0    0    -1  
$EndComp
Text Label 5000 2050 2    50   ~ 0
3V3
Wire Wire Line
	5000 2350 4500 2350
Connection ~ 4500 2350
Wire Wire Line
	3350 3400 3350 3500
Connection ~ 3350 3500
Wire Wire Line
	3350 3500 3350 3600
Connection ~ 3350 3600
Wire Wire Line
	3350 3600 3350 3700
Text Label 3350 3900 2    50   ~ 0
GND
Wire Wire Line
	3350 3900 3350 4000
Connection ~ 3350 4000
Wire Wire Line
	3350 4000 3350 4100
Connection ~ 3350 4100
Wire Wire Line
	3350 4100 3350 4200
Text Label 4550 3500 0    50   ~ 0
GND
Text Label 4550 3600 0    50   ~ 0
3V3
Text Label 4550 3700 0    50   ~ 0
GND
Text Notes 4800 3650 0    50   ~ 0
Strap 3'b010 = ±2.5V\nReset to mid scale
NoConn ~ 4550 3200
Text Label 4700 2900 0    50   ~ 0
DAC_REF
Wire Wire Line
	4700 2900 4550 2900
Text Label 4700 3000 0    50   ~ 0
DAC_REF_COMP
Wire Wire Line
	4700 3000 4550 3000
Text Label 5750 2050 2    50   ~ 0
DAC_REF
$Comp
L device:C C24
U 1 1 5E7F20D3
P 5750 2200
F 0 "C24" H 5865 2246 50  0000 L CNN
F 1 "0.1 uF" H 5865 2155 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 5788 2050 50  0001 C CNN
F 3 "" H 5750 2200 50  0001 C CNN
	1    5750 2200
	1    0    0    -1  
$EndComp
$Comp
L device:C C25
U 1 1 5E7F2284
P 6500 2200
F 0 "C25" H 6615 2246 50  0000 L CNN
F 1 "0.1 uF" H 6615 2155 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 6538 2050 50  0001 C CNN
F 3 "" H 6500 2200 50  0001 C CNN
	1    6500 2200
	1    0    0    -1  
$EndComp
Text Label 6500 2050 2    50   ~ 0
DAC_REF_COMP
Wire Wire Line
	6500 2350 5750 2350
Connection ~ 5000 2350
Connection ~ 5750 2350
Wire Wire Line
	5750 2350 5000 2350
Text HLabel 4550 4400 2    50   Output ~ 0
VIN_OFFSET
NoConn ~ 4550 4700
Text HLabel 3350 3400 0    50   Input ~ 0
GND
$Comp
L Connector:Conn_01x01 TP?
U 1 1 5EACBDE1
P 5200 3900
AR Path="/5E7383DD/5EACBDE1" Ref="TP?"  Part="1" 
AR Path="/5E704937/5EACBDE1" Ref="TP13"  Part="1" 
F 0 "TP13" H 5280 3942 50  0000 L CNN
F 1 "TESTPOINT" H 5280 3851 50  0000 L CNN
F 2 "azonenberg_pcb:TESTPOINT_SMT_0.5MM" H 5200 3900 50  0001 C CNN
F 3 "~" H 5200 3900 50  0001 C CNN
	1    5200 3900
	1    0    0    -1  
$EndComp
Text Label 4550 3900 0    50   ~ 0
MUXOUT
Wire Wire Line
	5000 3900 4550 3900
$Comp
L Connector:Conn_01x01 TP?
U 1 1 5EACCD7B
P 7100 3900
AR Path="/5E7383DD/5EACCD7B" Ref="TP?"  Part="1" 
AR Path="/5E704937/5EACCD7B" Ref="TP14"  Part="1" 
F 0 "TP14" H 7180 3942 50  0000 L CNN
F 1 "TESTCLIP" H 7180 3851 50  0000 L CNN
F 2 "azonenberg_pcb:TESTPOINT_SMT_KEYSTONE_5016" H 7100 3900 50  0001 C CNN
F 3 "~" H 7100 3900 50  0001 C CNN
	1    7100 3900
	1    0    0    -1  
$EndComp
Text Label 6900 3900 2    50   ~ 0
GND
$Comp
L Connector:Conn_Coaxial J?
U 1 1 5EBB7D3D
P 5650 4450
AR Path="/5E743C43/5EBB7D3D" Ref="J?"  Part="1" 
AR Path="/5E704937/5EBB7D3D" Ref="J13"  Part="1" 
F 0 "J13" H 5500 4400 50  0000 C CNN
F 1 "SMA" H 5500 4300 50  0000 C CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 5650 4450 50  0001 C CNN
F 3 "" H 5650 4450 50  0001 C CNN
	1    5650 4450
	1    0    0    1   
$EndComp
$Comp
L Connector:Conn_Coaxial J?
U 1 1 5EBB7D43
P 5650 4650
AR Path="/5E743C43/5EBB7D43" Ref="J?"  Part="1" 
AR Path="/5E704937/5EBB7D43" Ref="J14"  Part="1" 
F 0 "J14" H 5500 4600 50  0000 C CNN
F 1 "SMA" H 5500 4500 50  0000 C CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 5650 4650 50  0001 C CNN
F 3 "" H 5650 4650 50  0001 C CNN
	1    5650 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4650 5400 4650
Wire Wire Line
	5400 4650 5400 4600
Wire Wire Line
	5400 4500 5400 4450
Wire Wire Line
	5400 4450 5500 4450
Wire Wire Line
	5650 4250 5950 4250
Wire Wire Line
	5950 4250 5950 4850
Wire Wire Line
	5950 4850 5650 4850
Text Label 5950 4850 0    50   ~ 0
GND
Wire Wire Line
	4550 4500 5400 4500
Wire Wire Line
	4550 4600 5400 4600
Text Label 5100 4500 0    50   ~ 0
VDAC1
Text Label 5100 4600 0    50   ~ 0
VDAC2
$EndSCHEMATC
