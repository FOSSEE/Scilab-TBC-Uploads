//Tested on Windows 7 Ultimate 32-bit
//Chapter 5 Bipolar Transistor Biasing Pg no. 166
clear;
clc;

//Given Data
//Figure 5.27

IC=20D-3;//collector current in amperes
VCE=6;//collector to emitter voltage in volts
VCC=15;//supply voltage in volts
RL=390;//collector load resistance in ohms
IB=2D-3;//base bias current in amperes
B=90;//DC CE current gain beta
RE=82;//emitter resistance in ohms
C1=10D-6;//base coupling capacitance in farads
C2=10D-6;//collector coupling capacitance in farads
VBE=0.7;//forward voltage drop of emitter diode in volts

//Solution

R=(VCC-VBE-IC*RL-(IC+IB)*RE)/IB;//base collector parallel resistance in ohms
S=(B+1)/(1+(B*RE)/(RE+R));//stability factor S
printf("S = %.2f",S);

//calculation errors in textbook as KVL is incorrectly applied
