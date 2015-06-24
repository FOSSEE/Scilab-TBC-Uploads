// Exa 2.6
clc;
clear;
close;
// Given data
N = 6.02*10^23;
A = 63.5;// atomic weight
Rho = 1.7*10^-6;// in ohm cm
d = 8.96;// in gm/cc
n = (N/A)*d;// in /cc
e = 1.6*10^-19;// in C
Miu_e = 1/(Rho*n*e);// in cm^2/volt-sec
disp(Miu_e,"The mobility of electron in cm^2/volt.sec is");
