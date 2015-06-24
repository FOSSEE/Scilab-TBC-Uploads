//Ex:5.10
clc;
clear;
close;
u=0.5;// refractive index
N=400;// electron/cc
f=sqrt(81*N/(1-u^2));// frequency in KHz
printf("The frequency = %f KHz", f);