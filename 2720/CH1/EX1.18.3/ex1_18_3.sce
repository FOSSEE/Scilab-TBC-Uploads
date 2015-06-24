// Exa 1.18.3
clc;
clear;
close;
// Given data
At = 28;// Atomic weight
n = 4;
N_A = 6.023*10^23;
a = 5.3;// in Å
a = a * 10^-10;// in m
m = At/N_A;// in gm
m = m*10^-3;// in kg
V = (a)^3;// in m^3
Rho = (m*n)/V;// in gm/m^3
Rho = Rho * 10^-3;// in kg/m^3
disp(Rho,"The volume density in kg/m^3 is");
