//Tested on Windows 7 Ultimate 32-bit
//Chapter 14 Operational Amplifiers Pg no. 431 and 432
clear;
clc;

//Given

A=175000;//open loop voltage gain
Zin=1.5D6;//input impedance in ohms
Zout=70;//output impedance in ohms
Ri=8.2D3;//resistance Ri in ohms
Rf=180D3;//feedback resistance in ohms

//Solution

X=Ri/(Ri+Rf);//voltage divider ratio
Zin_n=Zin*(1+A*X);//input impedance in ohms
Zout_n=Zout/(1+A*X);//output impedance in ohms
Av_cl=1/X;//closed loop voltage gain
printf("Input impedance Zin = %.f Mega-ohms\n ",Zin_n/10^6);
printf("Output impedance Zout = %.4f ohms\n ",Zout_n);
printf("Closed loop voltage gain (Av)cl = %.f",Av_cl);
