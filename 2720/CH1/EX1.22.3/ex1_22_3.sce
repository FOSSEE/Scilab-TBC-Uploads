// Exa 1.22.3
clc;
clear;
close;
// Given data
a = 2.9;// in Å
a = a * 10^-8;// in cm
Rho = 7.87;// in gm/cc
N_A = 6.023*10^23;
M = 55.85
// Rho = (n*M)/(N_A*((a)^3))
n = (Rho*N_A*((a)^3))/M;// in atoms per unit cell
disp(round(n),"The number of atoms per unit cell is ");

