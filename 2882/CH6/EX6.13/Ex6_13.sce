//Tested on Windows 7 Ultimate 32-bit
//Chapter 6 Single Staje BJT Amplifiers Pg no. 207
clear;
clc;

//Given Data
//Figure 6.31

VCC=18;//collector supply voltage in volts
RB=3.9D6;//base resistance in ohms
RE=470;//emitter resistance in ohms
VBE=1.6;//forward voltage drop of emitter diode of darlington pair in volts
Bac=10000;//DC current gain beta for darlington pair
ri=6D3;//emitter diode forward resistance

//Solution

Zin=1/(1/RB+1/(ri+Bac*RE));//input impedance of the circuit
printf("Zin = %.3f Mega-ohms",Zin/10^6);
