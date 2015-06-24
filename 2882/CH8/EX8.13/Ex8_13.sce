//Tested on Windows 7 Ultimate 32-bit
//Chapter 8 Power Amplifiers Pg no. 290
clear;
clc;

//Given Data

VCC=12;//collector supply voltage in volts
RL=16;//load resistance of loudspeaker in ohms
Pmax=1;//input power of loudspeaker
VCE_sat=0.7;//collector to emitter saturation voltage in volts

//Solution

PCC=4/%pi*Pmax;//supplied power in watts
P=0.5*(PCC-Pmax);//collector dissipated power in watts
printf("Supplied power PCC = %.3f Watts\n ",PCC);
printf("Collector dissipated power = %.3f Watts",P);

//decimal approximations taken here
