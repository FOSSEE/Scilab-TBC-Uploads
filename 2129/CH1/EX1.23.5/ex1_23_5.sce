//Exa 1.23.5
clc;
clear;
close;
//Given data
R = 9 * 10^-3;// in ohm-m
R_H = 3.6 * 10^-4;// in m^3
e = 1.6 * 10^-19;// in C
Sigma = 1/R;// in (ohm-m)^-1
Rho = 1/R_H;// in coulomb/m^3
n = Rho/e;// in /m^3
disp(n,"Density of charge carriers in per m^3 is");
Mu = Sigma * R_H;// in m^2/v-s
disp(Mu,"Mobility of charge carriers in m^2/V-s is");

