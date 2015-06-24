//Ex:82
clc;
clear;
close;
d=10;//in m
f=6*10^9;//in Hz
u=0.8;//Aperture efficiency
A=(%pi*d^2)/4;
c=3*10^8;//velocity of light in m/s
y=c/f;//wavelength in m
G=(u*4*3.14*A)/(y^2);
printf("Gain=%f db",10*log(G)/log(10));