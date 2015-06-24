//Ex:5.3
clc;
clear;
close;
u=0.9;// refractive index
f=10*10^6;// frequency in Hz
h=400;// height in km
Nmax=((1-0.81)*f^2)/81;
fc=9*sqrt(Nmax);// frequency in Hz
Ds=(2*h)*(sqrt((f/fc)^2-1));// range in km
printf("The range = %f km", Ds);