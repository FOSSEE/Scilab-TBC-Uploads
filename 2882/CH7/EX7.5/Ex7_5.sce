//Tested on Windows 7 Ultimate 32-bit
//Chapter 7 Field Effect Transistors Pg no. 227
clear;
clc;

//Given Data
//Figure 7.14

VDD=15;//drain supply voltage in volts
IDSS=15D-3;//drain saturation current in amperes
VP=-6;//pinchoff voltage in volts
RD=1D3;//drain resistance in ohms
RG=2D6;//gate resistance in ohms
VGG=1.5;//gate supply voltage in volts

//Solution

disp("(i)");
VGS_Q=-VGG;//quiscent gate to source voltage in volts (since gate current is zero and drop across RG=0 Volts)
printf("VGS_Q = %.1f Volts",VGS_Q);

disp("(ii)");
IDQ=IDSS*(1-VGS_Q/VP)^2;//quiscent drain current in amperes
printf("IDQ = %.3f mA",IDQ*10^3);

disp("(iii)");
VDS=VDD-IDQ*RD;//drain to source voltage in volts
printf("VDS = %.3f Volts",VDS);

disp("(iv)");
VD=VDS;//drain to ground voltage in volts (since source is grounded)
printf("VD = %.3f Volts",VD);

disp("(v)");
VG=VGS_Q;//gate to ground voltage in volts (since source is grounded)
printf("VG = %.1f Volts",VG);

disp("(vi)");
VS=0;//source to ground voltage in volts (since source is grounded)
printf("VS = %d Volts",VS);
