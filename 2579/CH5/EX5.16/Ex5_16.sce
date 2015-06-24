//Ex:5.16
clc;
clear;
close;
u=0.9;// refractive index
f=10*10^6;// frequency in Hz
h=400;// height in km
Nmax=((1-0.81)*f^2)/81;
fmuf=10*10^6;// in Hz
fc=9*sqrt(Nmax);// frequency in Hz
R=6370;// in km
d=1651.76;
D=2*(h+(d^2/(8*R)))*(sqrt((fmuf/fc)^2-1));// skip distance in km
printf("The skip distance = %f km", D);