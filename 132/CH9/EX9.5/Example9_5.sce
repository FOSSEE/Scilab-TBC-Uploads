//Example 9.5
//Program to Calculate Maximum Voltage Gain & Bandwidth
clear;
clc ;
close ;
//Given Data
Rl=10*10^3; //Ohms
Rg=470*10^3; //Ohms
Cs=100*10^(-12); //F
u=25;
rp=8*10^3; //Ohms
Cc=0.01*10^(-6); //F
//Calculation
gm=u/rp;
Req=rp*Rl*Rg/(rp*Rl+Rl*Rg+Rg*rp);
Avm=gm*Req;
Avmd=Avm^2; // Voltage Gain of Two Stages
Rd=(rp*Rl/(rp+Rl))+Rg;
f1=1/(2*%pi*Cc*Rd); //Lower Cutoff Frequency
f1d=f1/sqrt(sqrt(2)-1); //Lower Cutoff Frequency of Two Stages
f2=1/(2*%pi*Cs*Req); //Upper Cutoff Frequency
f2d=f2*sqrt(sqrt(2)-1); //Upper Cutoff Frequency of Two Stages
BW=f2d-f1d; //Bandwidth
//Displaying The Results in Command Window
printf("\n\t The Voltage Gain of Two Stages, Avmd = %f ",Avmd);
printf("\n\t The Bandwidth, BW = %f kHz",BW/10^3);