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
ri=6D3;//emitter forward resistance of darlington pair

//Solution

Zout=1/(1/RE+1/ri+1/(ri/Bac));//output impedance of the overall circuit in ohms
Gv=(RE+Bac*RE)/(ri+RE+Bac*RE);//a.c. voltage gain
printf("Zout = %.1f ohms\n ",Zout);
printf("Gv = %.4f",Gv);
