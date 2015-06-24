//Tested on Windows 7 Ultimate 32-bit
//Chapter 5 Bipolar Transistor Biasing Pg no. 162 and 163
clear;
clc;

//Given Data
//Figure 5.24

VCC=20;//supply voltage in volts
R=270D3;//base bias resistance in ohms(60k+90k+120k)
RL=3.9D3;//load collector resistance in ohms
RE=410;//emitter resistance in ohms
B=100;//DC CE current gain beta
VBE=0.7;//forward voltage drop of emitter diode in volts
Cb=12D-6;//base coupling capacitor in farads
Cc=12D-6;//collector coupling capacitor in farads
Ce=60D-6;//emitter bypass capacitor in farads

//Solution

IB=(VCC-VBE)/(B*(RL+RE)+R);//base current in ampere
IC=B*IB*1000;//collector current in milli ampere
VC=VCC-IC*RL/1000;//collector to ground voltage in volts
printf("d.c. level of IB = %.1f μA\n",IB*10^6);
printf("d.c. level of VC = %.2f Volts\n",VC);

//decimal approximation error w.r.t textbook
