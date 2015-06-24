//Tested on Windows 7 Ultimate 32-bit
//Chapter 7 Field Effect Transistors Pg no. 225
clear;
clc;

//Given Data

IDSS=15D-3;//drain saturation current in amperes
gm0=5D-3;//transconductance for VGS=0 Volts in Siemens
gm=2.5D-3;//transconductance in Siemens

//Solution

ID=IDSS*(gm/gm0)^2;//drain current in amperes
printf("ID = %.2f mA",ID*10^3);
