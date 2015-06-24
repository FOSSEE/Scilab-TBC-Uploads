//Tested on Windows 7 Ultimate 32-bit
//Chapter 12 Modulation and Demodulation Pg no. 381
clear;
clc;

//Given

Pc1=12D3;//carrier wave power in watts
m1=0.75;//maximum modulation index that can be achieved
m2=0.45;//modulation index for AM wave

//Solution

Pt=Pc1*(1+m1^2/2);//total power of AM wave in watts
Pc2=Pt/(1+m2^2/2);//carrier power in watts for m=m2
printf("Carrier power cane be raised to Pc = %.2f kW",Pc2/10^3);
