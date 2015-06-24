// Exa 7.25
clc;
clear;
close;
// Given data
C1= 160*10^-12;// in F
C2= 36*10^-12;// in F
f1=250;// in kHz
f1=f1*10^3;// in Hz
f2=500;// in kHz
f2=f2*10^3;// in Hz
Cd= (C1-4*C2)/3;// in F
disp(Cd*10^12,"Self Capacitance of the coil in µµF")
// Formula f1= 1/(2*%pi*sqrt(L*(C1+Cd)))
L= 1/((2*%pi*f1)^2*(C1+Cd));// in H
disp(round(L*10^6),"Self inductance of the coil in µH");
