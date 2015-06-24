//Tested on Windows 7 Ultimate 32-bit
//Chapter 5 Bipolar Transistor Biasing Pg no. 151
clear;
clc;

//Given Data
//Figure 5.10

VCE=15;//voltage between collector and emitter in volts at IC = 0 mA
IC=15D-3;//collecotr current in amperes in VCE = 0 Volts
IB=35D-6;//base current at Q point in amperes
VBE=0.7;//forward voltage drop of emitter diode in volts

//Solution

VCC=VCE;//biasing voltage in volts = VCE at IC = 0 mA
R=(VCC-VBE)/IB/1000;//base biasing resistance in kilo-ohms
Rl=VCC/IC/1000;//load resistance in kilo-ohms

printf("VCC = %d Volts\n R = %.1f kilo-ohms\n Rl = %d kilo-ohm",VCC,R,Rl);
