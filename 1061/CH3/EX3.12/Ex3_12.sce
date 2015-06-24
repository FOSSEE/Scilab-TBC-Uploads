//Ex:3.12
clc;
clear;
close;
n1=1.45;// core refractive index
dl=0.015;// index difference
y=0.85*(10^-6);// wavelength in meter
v=2.4*(1+(2/2))^(0.5);// Max normalised frequency
a=(v*y)/(2*%pi*n1*(2*dl)^(0.5));// Max core radius in m
d=2*a;// The max core diameter in meter
printf("The max core diameter in meter=%f um", d*10^6);