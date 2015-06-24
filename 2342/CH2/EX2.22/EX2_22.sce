//Exa 2.22
format('v',10)
clc;
clear;
close;
//Given data
R = 9 * 10^-3;// in ohm-m
R_H = 3.6 * 10^-4;// in m^3
e = 1.6 * 10^-19;// in C
Sigma = 1/R;// in (ohm-m)^-1
Rho = 1/R_H;// in coulomb/m^3
// Density of charge carriers 
n = Rho/e;// in /m^3
disp(n,"Density of charge carriers per m^3 is");
// Mobility of charge carriers 
Mu = Sigma * R_H;// in m^2/v-s
disp(Mu,"Mobility of charge carriers in m^2/V-s is");

