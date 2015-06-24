//Tested on Windows 7 Ultimate 32-bit
//Chapter 7 Field Effect Transistors Pg no. 237
clear;
clc;

//Given Data

gm=5D-3;//transconductance in Siemens
RD=1D3;//drain resistance in ohms
rd=7D3;//AC drain resistance in ohms

//Solution

GV=gm*RD*rd/(RD+rd);//voltage gain
printf("GV = %.3f",GV);
