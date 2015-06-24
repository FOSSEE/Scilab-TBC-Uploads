//Tested on Windows 7 Ultimate 32-bit
//Chapter 7 Field Effect Transistors Pg no. 224
clear;
clc;

//Given Data

IDSS=30D-3;//drain saturation current in amperes
VGS_cutoff=-10;//gate to source cutoff voltage in volts
gm0=5000D-6;//transconductance at VGS=0 Volts in Siemens
VGS=-5;//gate to source voltage in volts

//Solution

gm=gm0*(1-VGS/VGS_cutoff);//transconductance for given VGS in Siemens
ID=IDSS*(1-VGS/VGS_cutoff)^2;//drain current for given VGS in amperes
printf("gm = %d μS\n ",gm*10^6);
printf("ID = %.1f mA",ID*10^3);

//calculation of gm is incorrect in textbook as gm0=5000μS and not 500μS
