// Exa 1.18.4
clc;
clear;
close;
// Given data
r = 1.278;// in Å
a = (4*r)/(sqrt(2));// in Å
a = a * 10^-10;// in m
V = (a)^3;// in m^3
At = 63.5;// atomic weight
N_A = 6.023*10^23;
m = At/N_A;// in gm
m = m * 10^-3;// in kg
n = 4;
Rho = (m*n)/V;// in gm/m^3
Rho = Rho * 10^-3;// in kg/m^3
disp(Rho,"The density of copper crystal in kg/m^3 is");
