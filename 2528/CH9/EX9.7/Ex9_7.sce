// Chapter 9
// determine Output frequency
// Page.No-327
// Example9_7
//Figure 9.28
// Given
clear;clc;
Vp=12;          //in V
R1=4700;            //in Ohm
R2=2000;            //in Ohm
R3=20000;            //in Ohm
C=1.1*10^-9;            //in Farad
Vc=Vp*(R3/(R2+R3));
printf("\n The control Voltage is  = %.2f V\n",Vc); // Result
fo=2*(Vp-Vc)/(Vp*R1*C);
printf("\n Output frequency  = %.0f Hz\n",fo); // Result
