// Exa 2.16.5
clc;
clear;
close;
format('e',8)
// Given data
At = 63.5;// atomic weight
d = 8.96;// in gm/cc
Miu_e = 43.28;// in cm^2/V.sec
N_A = 6.02*10^23;// in /gm mole
e = 1.6*10^-19;// in C
n = (N_A/At)*d;// in /cc
Rho = 1/(n*e*Miu_e);// in ohm-cm
disp(Rho,"The resistivity in ohm-cm is");
