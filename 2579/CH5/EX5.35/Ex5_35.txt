//Ex:5.35
clc;
clear;
close;
u=0.6;// refractive index
N=4.23*10^4;// electron/m^3
f=sqrt(81*N/(1-u^2));// frequency in Hz
printf("The frequency = %f Hz", f);