//Ex:5.31
clc;
clear;
close;
u=0.8;// refractive index
f=15*10^6;// frequency in Hz
fmuf=20*10^6;// MUF in Hz
h=350;// height in km
Nmax=((1-u^2)*f^2)/81;
fc=9*sqrt(Nmax);// frequency in Hz
Ds=(2*h)*(sqrt((fmuf/fc)^2-1));// range in km
printf("The range = %f km", Ds);