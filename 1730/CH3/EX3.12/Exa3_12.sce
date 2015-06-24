//Exa3.12
clc;
clear;
close;
// given data
e=1.6*10^-19;// in coulomb
Resistivity=9*10^-3;// in ohm-m
R_H=3.6*10^-4;// in m^3 coulomb^-1  (Hall Coefficient)
sigma=1/Resistivity;
rho=1/R_H;
n=rho/e;
disp("Density of charge carriers is : "+string(n)+" /m^3");
miu=sigma*R_H;
disp("Mobility is : "+string(miu)+" m^2/V-s");

