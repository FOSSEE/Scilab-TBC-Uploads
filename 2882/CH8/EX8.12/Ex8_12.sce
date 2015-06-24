//Tested on Windows 7 Ultimate 32-bit
//Chapter 8 Power Amplifiers Pg no. 289 and 290
clear;
clc;

//Given Data

VCC=12;//collector supply voltage in volts
RL=16;//load resistance of loudspeaker in ohms
Pmax=1;//input power of loudspeaker
VCE_sat=0.7;//collector to emitter saturation voltage in volts

//Solution

k=(VCC-VCE_sat)/sqrt(2*RL*Pmax);//turns ratio
printf("Turns ratio η = %.3f or %.f turns",k,k);
