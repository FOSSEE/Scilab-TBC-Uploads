//Tested on Windows 7 Ultimate 32-bit
//Chapter 7 Field Effect Transistors Pg no. 255 and 256
clear;
clc;

//Given Data
//Figure 7.49(b)

R1=8.2D3;//divider network resistance R1 in ohms
R2=15D3;//divider network resistance R2 in ohms
RD=680;//drain resistance in ohms
RS=0;//source resistance in ohms
VDD=20;//drain supply voltage in volts
ID_ON=2D-3;//ON drain current in amperes
VGS=10;//gate to source voltage in volts
VGS_th=5;//threshold voltage in volts

//Solution

VGS_Q=VDD*R2/(R1+R2);//gate to source voltage in volts
C=ID_ON/(VGS-VGS_th)^2;//constant C in ampere/volt^2
ID=C*(VGS_Q-VGS_th)^2;//drain current in amperes
VDS=VDD-ID*RD;//drain to source voltage in volts
printf("VDS = %.2f Volts",VDS);
