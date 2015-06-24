// Exa 1.22.2
clc;
clear;
close;
// Given data
r = 1.28;// in Å
//Formula r = (a*sqrt(2))/4;
a = (4*r)/(sqrt(2));// in Å
a = a * 10^-8;// in cm
n = 4;
M = 63.5;
N_A = 6.023*10^23;
Rho = (n*M)/(N_A*((a)^3));// in gm/cc
disp(Rho,"The density in gm/cc is");
