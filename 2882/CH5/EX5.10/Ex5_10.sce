//Tested on Windows 7 Ultimate 32-bit
//Chapter 5 Bipolar Transistor Biasing Pg no. 164 and 165
clear;
clc;

//Given Data

IE=1.5D-3;//emitter current in amperes
VCC=15;//supply voltage in volts
B=100;//DC CE current gain beta
VBE=0.7;//forward voltage drop of emitter diode in volts

//Solution

//Approximations
VR2=VCC/3;//voltage across R2 is 1/3rd of supply voltage
VRL=VCC/3;//voltage across RL is 1/3rd of supply voltage

VB=VR2;//voltage of base to ground in volts
VE=VB-VBE;//voltage of emitter to ground in volts
RE=VE/IE;//emitter resistance in ohms
I=0.1*IE;//setting voltage divider current as 0.1IE and neglecting base current
R1_plus_R2=VCC/I;//R1+R2 in ohms
R2=VR2/VCC*R1_plus_R2;//R2 in ohms
R1=R1_plus_R2-R2;//R1 in ohms

printf("RE = %.2f kilo-ohms\n",RE/1000);
printf("R1 = %.2f kilo-ohms\n",R1/1000);
printf("R2 = %.2f kilo-ohms\n",R2/1000);
//design is given in Figure E5.10
//IE for this circuit is 1.40 mA and more accuracy can be obtained by exact equations and eliminating approximations
