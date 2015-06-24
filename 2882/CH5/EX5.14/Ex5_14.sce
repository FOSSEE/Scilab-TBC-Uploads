//Tested on Windows 7 Ultimate 32-bit
//Chapter 5 Bipolar Transistor Biasing Pg no. 166 and 167
clear;
clc;

//Given Data
//Figure 5.28

VCC=12;//supply voltage in volts
RL=6.8D3;//collector load resistance in ohms
B=75;//DC CE current gain beta
R=82D3;//base collector parallel resistance in ohms
VBE=0.7;//forward voltage drop of emitter diode in volts

//Solution

IC=(VCC-VBE)/(RL+R/B);//collector current in amperes
VCE=VCC-IC*RL;//collector to emitter voltage in volts and VCE = VC as VE = 0 V since emitter is grounded
printf("IC = %.2f mA\n",IC*1000);
printf("VCE = %.2f Volts\n",VCE);
