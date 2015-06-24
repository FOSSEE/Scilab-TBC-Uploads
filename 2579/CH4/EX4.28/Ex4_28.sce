//Ex:4.28
clc;
clear;
close;
A=5;// area in m^2
w=25*10^-3;// power in watt
f=15;// frequency in MHz
y=300/f;// wavelength in m
Rr=31171*(A/y^2)^2;// radiation resistance in ohm
V=sqrt(w*4*Rr);// max emf in volts
printf("The max emf = %f Volts", V);