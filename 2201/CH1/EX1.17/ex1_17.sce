// Exa 1.17
clc;
clear;
close;
// Given data
M = 60;// in gm/mole
Rho = 6.23;// in gm/cc
n = 4;
N_A = 6.023*10^23;
a = ((n*M)/(N_A * Rho))^(1/3);// in cm
r = (a*sqrt(2))/n;//radius of atom in cm
r = r * 10^8;// in Å
disp(r,"Radius of atom in Å is");
