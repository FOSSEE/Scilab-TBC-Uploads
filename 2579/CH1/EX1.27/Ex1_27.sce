//Ex:1.27
clc;
clear;
close;
le=50;// effective height of antenna in m
f=10;// frequency in MHz
y=300/f;// wavelength in m
Rr=160*(%pi^2)*(le/y)^2;// Radiation resistance in ohm
printf("The Radiation resistance = %f k-ohm", Rr/1000);