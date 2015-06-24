//Tested on Windows 7 Ultimate 32-bit
//Chapter 7 Field Effect Transistors Pg no. 230 and 231
clear;
clc;

//Given Data
//Figure 7.18 and 7.19

VDD=18;//drain supply voltage in volts
IDSS=12D-3;//drain saturation current in amperes
VP=-2;//pinchoff voltage in volts
RD=1172;//drain resistance in ohms
RS=1028;//source resistance in ohms
VSS=9;//source supply voltage in volts

//Solution

disp("(i)");
VGS_a=9;//for ID=0 mA VGS=VSS volts
ID_a=8.754D-3;//for VGS=0 volts ID=VSS/RS amperes0
//a load line is constructed using these values and the intersection with charecteristic curve gives Q point
IDQ=9D-3;//quiscent drain current found graphically in amperes
printf("IDQ = %d mA",IDQ*10^3);

disp("(ii)");
VGS_Q=-0.25;//quiscent gate to source voltage in volts found graphically
printf("VGS_Q = %.2f Volts",VGS_Q);

disp("(iii)");
VDS=VDD-IDQ*(RD+RS)+VSS;//drain to source voltage in volts
printf("VDS = %.1f Volts",VDS);

disp("(iv)");
VD=VDD-IDQ*RD;//drain to ground voltage in volts (since source is grounded)
printf("VD = %.2f Volts",VD);

disp("(v)");
VS=VD-VDS;//source to ground voltage in volts
printf("VS = %.2f Volts",VS);
