//clear//
//Caption:Program to find the input impedance for a line terminated with impedance(with inductive reactance)
//Example11.10
//page369
clc;
close;
ZL = 25+%i*50; //load impdance in ohms
Zo  = 50; //characteristic impedance in ohms
T = (ZL-Zo)/(ZL+Zo);//reflection coefficient in rectandular form
[R,teta] = polar(T);//reflection coefficient in polar form
L = 60e-02;//length 60 cm
Lambda = 2; //wavelength = 2m
EL = 2*%pi*L/Lambda; //electrical length in radians

Zin =(1+T*exp(-%i*2*EL))/(1-T*exp(-%i*2*EL));
disp(Zin,'Input impedance in ohms Zin =')
//Result
//Input impedance in ohms Zin =   
//    0.2756473 - 0.4055013i