//Ex:9.19
clc;
clear;
close;
n=0.45;// quantum efficiency
h=6.62*10^-34;// plank constant
c=3*10^8;// speed of light in m/s
y=1.2*10^-6;// cut off wavelength in m
Ic=20*10^-6;// collector current in A
Po=120*10^-6;// incident optical power in W
e=1.602*10^-19;// charge
Go=(h*c*Ic)/(y*Po*e);// optical gain
h_e=Go/n;// common emitter gain
printf("The optical gain =%f", Go);
printf("\n The common emitter gain =%f", h_e);