// Chapter 9
// determine Output frequency
// Page.No-328
// Example9_8
//Figure 9.29
// Given
clear;clc;
Vp=12;          //in V
R1=4700;            //in Ohm
R2=2000;            //in Ohm
R3=20000;            //in Ohm
C=1.1*10^-9;            //in Farad
Vc=Vp*(R3/(R2+R3));
//for minimum Vc
Vcmin=Vc-0.5;
printf("\n The control Voltage is  = %.2f V\n",Vcmin); // Result
fo=2*(Vp-Vcmin)/(Vp*R1*C);
printf("\n Output frequency  = %.0f Hz\n",fo); // Result
//for maximum Vc
disp("For minimum frequency Use maximum Vc");
Vcmin1=Vc+0.5;
printf("\n The control Voltage is  = %.2f V\n",Vcmin1); // Result
fo=2*(Vp-Vcmin1)/(Vp*R1*C);
printf("\n Output frequency  = %.0f Hz\n",fo); // Result
