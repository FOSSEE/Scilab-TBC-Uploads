//Tested on Windows 7 Ultimate 32-bit
//Chapter 5 Bipolar Transistor Biasing Pg no. 168 and 169
clear;
clc;

//Given Data
//Figure E5.17

B=100;//DC CE current gain beta
VCC=15;//supply voltage in volts
RL=1D3;//collector load resistance in ohms
VCE=7.5;//collector to emitter voltage in volts
IC=6D-3;//collector current in amperes
VBE=0.7;//forward voltage drop of emitter diode in volts
S=12;//stability factor S


//Solution

IB=IC/B;//base current in amperes
RE=(VCC-VCE-IC*RL)/(IC+IB);//emitter resistance in ohms
Rth=RE*(S-1)/(1-S/(1+B));//thevenin resistance of divider network in ohms
R1=VCC*Rth/(IB*Rth+VBE+(IC+IB)*RE);//resistance R1 in ohms
R2=R1*Rth/(R1-Rth);//resistance R2 in ohms

printf("RE = %.3f kilo-ohms\n",RE/1000);
printf("R1 = %.2f kilo-ohms\n",R1/1000);
printf("R2 = %.2f kilo-ohms\n",R2/1000);

//error in calculations in textbook for R1 and R2 as R2 cannot be less than Rth which is parallel resistance of R1 and R2
