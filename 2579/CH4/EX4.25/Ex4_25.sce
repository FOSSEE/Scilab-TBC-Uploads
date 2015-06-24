//Ex:4.25
clc;
clear;
close;
N=15;// number of turns
A=1;// area in m^2
f=10*10^6;// frequency in Hz
Vrms=200*10^-6;// e.m.f in volt
x=1;// the value of cosine angle
u=4*%pi*10^-7;
H=(Vrms*sqrt(2))/(2*%pi*f*u*A*N);// peak value of the magnetic field intensity
printf("The peak value of the magnetic field intensity = %f uA/m", H*10^6);