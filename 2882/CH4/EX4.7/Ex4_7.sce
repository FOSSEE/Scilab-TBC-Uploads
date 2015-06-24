//Tested on Windows 7 Ultimate 32-bit
//Chapter 4 Bipolar Junction transistors Pg no. 139
clear;
clc;

//Given Data

IE=2D-3;//emitter current in amperes
A=0.97;//dc current gain of CB configuration
Vi=1D-3;//rms value of input ac voltage in volts
Rl=500;//load resistance in ohms
VT=26D-3;//temperature equivalent voltage of pn junction

//Solution

disp("(a)");
re=VT/IE;//emitter diode resistance in ohms
Zi=re;//input impedance in ohms
printf("Input impedance of CB circuit = re = %d ohms\n",Zi);

disp("(b)");
Ii=Vi/Zi;//input current in amperes
Vo=A*Ii*Rl;//output voltage in volts
Gv=Vo/Vi;//voltage gain

printf("Voltage gain of CB circuit Gv = %.1f\n",Gv);

disp("(c)");
//as output cicuit contains reverse biased junction output impedance is infinite
Gi=-A;//current gain

printf("Output impedance Zo=∞ and Current Gain Gi = %.2f",Gi);
