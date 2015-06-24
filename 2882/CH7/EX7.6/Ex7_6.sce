//Tested on Windows 7 Ultimate 32-bit
//Chapter 7 Field Effect Transistors Pg no. 229
clear;
clc;

//Given Data
//Figure 7.16

VDD=15;//drain supply voltage in volts
IDSS=10D-3;//drain saturation current in amperes
VP=-6;//pinchoff voltage in volts
RD=1D3;//drain resistance in ohms
RG=2D6;//gate resistance in ohms
RS=1D3;//source resistance in ohms

//Solution

disp("(i)");
ID_A=5D-3;ID_B=3D-3;//assuming two currents below and above the characteristic curve
VGS_A=ID_A*RS;VGS_B=ID_B*RS;//calculating corresponding gate to source voltages in volts
//constructing a line joining A and B. It intersects characteristic curve at Q point VGS_Q
VGS_Q=-3.2;//quiscent gate to source voltage in volts (solved using characteristic graph)
printf("VGS_Q = %.1f Volts",VGS_Q);

disp("(ii)");
IDQ=-VGS_Q/RS;//quiscent drain current in amperes
printf("IDQ = %.1f mA",IDQ*10^3);

disp("(iii)");
VDS=VDD-IDQ*(RD+RS);//drain to source voltage in volts
printf("VDS = %.1f Volts",VDS);

disp("(iv)");
VS=IDQ*RS;//source to ground voltage in volts
printf("VS = %.1f Volts",VS);

disp("(v)");
VG=0;//gate to ground voltage in volts (since gate current is almost zero,drop across RG is zero)
printf("VG = %d Volts",VG);

disp("(vi)");
VD=VDD-IDQ*RD;//drain to ground voltage in volts (since source is grounded)
printf("VD = %.1f Volts",VD);

//error in calculations in textbook as values are not taken as per the figure
