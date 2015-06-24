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

//Solution

Gi=RB/(RE+RB/Bac);//a.c. circuit current gain
printf("Gi = %d",Gi);

//error in question as base current can not be obtained without an input also not solved in textbook
