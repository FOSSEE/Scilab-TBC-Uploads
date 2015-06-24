//Exa3.19
clc;
clear;
close;
// given data
Resistivity=9.23*10^-3;// in ohm-m
R_H=3.84*10^-4;//in m^3/C   (Hall Coefficient)
sigma=1/Resistivity;
rho=1/R_H;
e=1.6*10^-19;// in C (electron charge)
n=rho/e;
disp("Density of charge carriers is : "+string(n)+" /m^2");
miu=sigma*R_H;
disp("Mobility is : "+string(miu)+" m^2/V-s")