//Exa 1.15
clc;
clear;
close
// given data
Tf=80;// in degree C
I=200;// in amp
h=4000;// in W/m^2degree C
rho=70*10^-6;
L=100;// in cm
R=0.1;// in ohm
d=3;// in mm
d=d*10^-3;
As= %pi*d;
//Formula I^2*R= h*As*(Tw-Tf)
Tw= I^2*R/(h*As)+Tf;
disp(Tw,"Central temperature of the wire in °C")