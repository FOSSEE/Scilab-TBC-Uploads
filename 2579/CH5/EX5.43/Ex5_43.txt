//Ex:5.43
clc;
clear;
close;
u=0.5;// refractive index
N=3.25*10^4;// electron/m^3
f=sqrt(81*N/(1-u^2));// frequency in Hz
printf("The frequency = %f KHz", f/1000);