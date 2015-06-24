//Exa3.13
clc;
clear;
close;
// given data
E_x=100;// in V/m
e=1.6*10^-19;// in C
R_H=0.0145;// in m^3/coulomb
miu_n=0.36;// in m^2/volt-second
// Formula R_H=1/(n*e)
n=1/(R_H*e);
sigma=n*e*miu_n;
J=sigma*E_x;
disp("Current density is : "+string(J)+" A per m^2");

