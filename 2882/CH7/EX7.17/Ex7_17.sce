//Tested on Windows 7 Ultimate 32-bit
//Chapter 7 Field Effect Transistors Pg no. 254 and 255
clear;
clc;

//Given Data
//Figure 7.50

IDSS=15D-3;//drain saturation current in amperes
VGS0=-6;//cut-off gate to source voltage in volts
VDD=20;//drain supply voltage in volts
RD=470;//drain resistance in ohms
RG=8.2D6;//gate resistance in ohms

//Solution

ID=IDSS;//drain current in amperes
VDS=VDD-ID*RD;//drain to source voltage in volts
printf("VDS = %.2f Volts",VDS);
