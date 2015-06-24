//Ex:4.26
clc;
clear;
close;
N=500;// number of turns
A=1;// area in m^2
f=10;// frequency in MHz
y=300/f;// wavelength in m
x=60*%pi/180;// angle in radians
Erms=20*10^-6;// field strength in volt
Vrms=(2*%pi*Erms*A*N*cos(x))/y;// e.m.f in volt
Q=150;// quality factor
Vr=Vrms*Q;// voltage to the receiver in volt
printf("The voltage to the receiver = %d mV", Vr*10^3);