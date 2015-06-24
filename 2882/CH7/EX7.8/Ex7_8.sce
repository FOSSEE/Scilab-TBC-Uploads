//Tested on Windows 7 Ultimate 32-bit
//Chapter 7 Field Effect Transistors Pg no. 232,233 and 234
clear;
clc;

//Given Data
//Figure 7.23 and 7.24

VDD=18;//drain supply voltage in volts
IDSS=10D-3;//drain saturation current in amperes
VP=-5;//pinchoff voltage in volts
RD=1.5D3;//drain resistance in ohms
RS=1D3;//source resistance in ohms
R1=1.5D6;//divider network resistance R1 in ohms
R2=180D3;//divider network resistance R2 in ohms
C1=5D-6;//gate coupling capacitance in farads
C2=25D-6;//source bypass capacitance in farads
C3=15D-6;//drain coupling capacitance in farads

//Solution

disp("(i)");
VG=VDD*R2/(R1+R2);//gate to ground voltage in volts
VGS_a=1.93;//for ID=0 mA VGS=VSS volts
ID_a=1.93D-3;//for VGS=0 volts ID=VG/RS amperes0
//a load line is constructed using these values and the intersection with charecteristic curve gives Q point
IDQ=3.64D-3;//quiscent drain current found graphically in amperes
printf("IDQ = %.2f mA",IDQ*10^3);

disp("(ii)");
VGS_Q=-1.85;//quiscent gate to source voltage in volts found graphically
printf("VGS_Q = %.2f Volts",VGS_Q);

disp("(iii)");
VD=VDD-IDQ*RD;//drain to ground voltage in volts (since source is grounded)
printf("VD = %.2f Volts",VD);

disp("(iv)");
VS=IDQ*RS;//source to ground voltage in volts
printf("VS = %.2f Volts",VS);

disp("(v)");
VDS=VDD-IDQ*(RD+RS);//drain to source voltage in volts
printf("VDS = %.1f Volts",VDS);

