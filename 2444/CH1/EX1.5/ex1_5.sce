// Exa 1.5
clc;
clear;
close;
format('v',10)
// Given data
d = 2;// in mm
d = d * 10^-3;// in m
sigma = 5.8*10^7;// in S/m
miu_e = 0.0032;// in m^2/V-s
E = 20;// in mV/m;
E = E * 10^-3;// in V/m
e = 1.6*10^-19;// in C
n = sigma/(e*miu_e);// in /m^3
disp(n,"The charge density of free electrons in /m^3 is");
J = sigma*E;// in A/m^2
disp(J,"The current density in A/m^2 is");
format('v',6)
I = J * ( (%pi*(d^2))/4 );// in A
disp(I,"The current flowing in the wire in A is");
format('v',9)
v = miu_e*E;// in m/s
disp(v,"The electron drift velocity in m/s is");
