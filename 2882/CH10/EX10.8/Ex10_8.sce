//Tested on Windows 7 Ultimate 32-bit
//Chapter 10 Feedback in Amplifiers Pg no. 341
clear;
clc;

//Given
//Figure 10.13

RL=6.8D3;//load resistance in ohms
RD=6.8D3;//drain resistance in ohms
Rs=400;//source resistance in ohms
R1=400D3;//voltage divider resistance R1 in ohms
R2=100D3;//voltage divider resistance R2 in ohms
gm=5000D-6;//transconductance in Siemens

//Solution

RL_dash=RL*RD/(RL+RD);//total equivalent load resistance in ohms
A=-gm*RL_dash;//open loop gain
B=-R2/(R1+R2);//feedback factor beta
Afb=A/(1+A*B);//closed loop gain
printf("Gain without feedback A = %d\n ",A);
printf("Gain with feedback Afb = %.2f",Afb);
