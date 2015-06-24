//Example 2.31 //inductance and resistance
clc;
clear;
close;
//given data :
fo=1.2*10^6; // in Hz
C=160*10^-12; // in farad
f=6*10^3; // resonant frequency in Hz
f1=fo+f;
f2=fo-f;
F=f1-f2;
Q=fo/F;
R=F/((2*%pi*(fo)^2*C));
disp(Q,"Q factor,Q = ")
disp(R,"resistance,R(ohm) = ")
