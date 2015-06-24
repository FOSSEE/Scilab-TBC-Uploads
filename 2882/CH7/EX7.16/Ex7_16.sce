//Tested on Windows 7 Ultimate 32-bit
//Chapter 7 Field Effect Transistors Pg no. 253
clear;
clc;

//Given Data
//Figure 7.47

ID_ON=5D-3;//ON drain current in amperes
VGS_th=5;//threshold gate to source voltage in volts
VGS=9;//gate to source voltage in volts
VDD=20;//drain supply voltage in volts
RD=1D3;//drain resistance in ohms
R1=2.2D3;//voltage divider network resistance R1 in ohms
R2=3.3D3;//voltage divider network resistance R2 in ohms

//Solution

VGS_Q=VDD*R2/(R1+R2);//gate to source voltage in volts
C=ID_ON/(VGS-VGS_th)^2;//constant C in ampere/volt^2
ID=C*(VGS_Q-VGS_th)^2;//drain current in amperes
VDS=VDD-ID*RD;//drain to source voltage in volts
printf("VGS = %d Volts\n VDS = %.2f Volts",VGS_Q,VDS);
