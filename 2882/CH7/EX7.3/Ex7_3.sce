//Tested on Windows 7 Ultimate 32-bit
//Chapter 7 Field Effect Transistors Pg no. 224 and 225
clear;
clc;

//Given Data

IDSS=10D-3;//drain saturation current in amperes
VP=6;//pinch-off voltage in volts
VGS=-3;//gate to source voltage in volts

//Solution

disp("(i)");
ID=IDSS*(1-VGS/(-VP))^2;//drain current for given VGS in amperes
printf("ID = %.1f mA",ID*10^3);

disp("(ii)");
gm0=-2*IDSS/(-VP);//transconductance for VGS=0 Volts in Siemens
printf("gm0 = %.2f mS",gm0*10^3);

disp("(iii)");
gm=gm0*(1-VGS/(-VP));//transconductance for given VGS in Siemens
printf("gm = %.2f mS",gm*10^3);
