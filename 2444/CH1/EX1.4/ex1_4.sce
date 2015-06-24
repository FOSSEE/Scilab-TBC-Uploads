// Exa 1.4
clc;
clear;
close;
format('v',10)
// Given data
e = 1.601*10^-19;// in C
m = 9.107 * 10^-31;// in kg
E = 100;// in V/m
n = 6*10^28;// in /m^3
rho = 1.5*10^-8;// in ohm-m
sigma = 1/rho;
torque = (sigma*m)/(n*(e^2));// in second
disp(torque,"The relaxation time in second is");
format('v',6)
v = ((e*E)/m)*torque;// in m/s
disp(v,"The drift velocity in m/s is");
