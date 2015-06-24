//Tested on Windows 7 Ultimate 32-bit
//Chapter 4 Bipolar Junction transistors Pg no. 139
clear;
clc;

//Given Data

B=140;//dc current gain of CE configuration
IE=2D-3;//emitter current in amperes
Rl1=2D3;//load resistance in ohms
Rl2=1.2D3;//load resistance in ohms
VT=26D-3;//temperature equivalent voltage of pn junction

//Solution

disp("(a)");
re=VT/IE;//emitter diode resistance in ohms
Zi=B*re;//input impedance in ohms
printf("Input impedance of CE circuit = re = %d ohms\n",Zi);

disp("(b)");
Gv=-Rl1/re;//voltage gain

printf("Voltage gain of CE circuit at 2k-ohm load = Gv = %.1f\n",Gv);

disp("(c)");
Gi=B;//current gain

printf("Current Gain Gi = %d",Gi);

//Error in voltage gain in part (b) as Rl is mistaken as 1.2 kilo-ohm instead of 2 kilo-ohm
