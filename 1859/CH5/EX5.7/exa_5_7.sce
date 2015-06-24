// Exa 5.7
clc;
clear;
close;
// Given data
Vin= 2;// in volt
Vout= 10;// in volt
R=100;// kohm
R=R*10^3;// in ohm
C= 0.1;// in miu F
C=C*10^-6;// in F
//  Vout= -1/(R*C)*integrate('Vin','t',0,t) = -Vin*t/(R*C)
t= Vout*R*C/Vin;// in sec
disp(t*10^3,"The maximum time upto which the reference voltage can be integrated in ms");
