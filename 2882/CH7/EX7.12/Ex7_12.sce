//Tested on Windows 7 Ultimate 32-bit
//Chapter 7 Field Effect Transistors Pg no. 241
clear;
clc;

//Given Data
//Figure 7.31

gm=5D-3;//transconductance in Siemens
RD=2.7D3;//drain resistance in ohms
RL=3.3D3;//load resistance in ohms

//Solution

RL_eq=RD*RL/(RD+RL);//equivalent load resistance in ohms
GV_dash=gm*RL_eq;//voltage gain for loaded circuit
GV=gm*RD;//voltage gain for unloaded circuit
printf("Voltage gain GV'' = %.2f\n Unloaded a.c. voltage gain GV = %.1f",GV_dash,GV);

//decimal approximation in textbook
