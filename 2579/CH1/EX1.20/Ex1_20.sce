//Ex:1.20
clc;
clear;
close;
le=49.12;// effective height in m
Irms=220;// current in amp
f=37.5;// frequency in KHz
f1=f/1000;// frequency in MHz
y=300/f1;// wavelength in m
Rr=160*(%pi^2)*(le/y)^2;// Radiation resistance in ohm
W=Irms^2*Rr;//  power radiated in watts
printf("The power radiated = %f kW", W/1000);