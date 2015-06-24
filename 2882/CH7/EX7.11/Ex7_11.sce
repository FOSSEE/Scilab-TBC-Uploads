//Tested on Windows 7 Ultimate 32-bit
//Chapter 7 Field Effect Transistors Pg no. 238
clear;
clc;

//Given Data
//Figure 7.30

gm=5D-3;//transconductance in Siemens
RD=1.2D3;//drain resistance in ohms
RS=330;//source resistance in ohms

//Solution

GV=gm*RD/(1+gm*RS);//voltage gain
printf("GV = %.2f",GV);
