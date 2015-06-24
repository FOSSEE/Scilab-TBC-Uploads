//Ex:5.45
clc;
clear;
close;
u=0.5;// refractive index
N=400;// electron/cc
f=sqrt(81*N/(1-u^2));// frequency in Hz
N1=1.24*10^6;// in per cm^3
fc=9*sqrt(N1);// critical frequency in Hz
printf("The frequency = %f KHz", f/1000);
printf("\n The critical frequency = %d KHz", fc/1000);