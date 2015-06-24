//Tested on Windows 7 Ultimate 32-bit
//Chapter 12 Modulation and Demodulation Pg no. 381
clear;
clc;

//Given

Pc=10D3;//carrier wave power in watts
m=0.75;//depth of modulation
e=0.65;//efficiency of modulator

//Solution

Ps=0.5*m^2*Pc;//total sideband power in watts
Pa=Ps/e;//required audio power in watts
printf("Required audio power P = %.3f kW",Pa/10^3);
