//Exa3.14
clc;
clear;
close;
// given data
Resistivity=9;// in milli-ohm-m
Resistivity=9*10^-3;// in ohm-m
miu=0.03;// in m^2/V-s
sigma=1/Resistivity;
R_H=miu/sigma;
disp("Half coefficient is : "+string(R_H)+" m^3/C");

