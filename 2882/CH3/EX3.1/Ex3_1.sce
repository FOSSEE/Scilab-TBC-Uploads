//Tested on Windows 7 Ultimate 32-bit
//Chapter 3 Semiconductor Diodes and Miscellaneous Devices Pg no. 71
clear;
clc;

//Given Data

//Figure 3.14
e1=4;//Relative emf of primary side
e2=1;//Relative emf of secondary side
vinp=220;//Input peak voltage in volts
Vd=0.7;//Forward voltage drop of diode

//Solution

tr=e2/e1;//turns ratio n2/n1
V2=tr*vinp;//as v2/v1=n2/n1
Voutp=V2-Vd;//Vout across Rl in volts

printf("The peak value of rectified output voltage is:\n(Vout)peak=%.1f V",Voutp);
