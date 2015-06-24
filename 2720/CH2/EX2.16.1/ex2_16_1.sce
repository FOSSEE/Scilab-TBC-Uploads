// Exa 2.16.1
clc;
clear;
close;
// Given data
At = 63.5;// atomic weight
Rho = 1.7*10^-6;// in ohm cm
d = 8.96;// in gm/cc
N_A = 6.02*10^23;// in /gm.mole
e = 1.6*10^-19;// in C
n = (N_A/At)*d;
Miu_e = 1/(Rho*n*e);// in cm^2/volt.sec
disp(Miu_e,"The electron mobility in cm^2/volt-sec is");
