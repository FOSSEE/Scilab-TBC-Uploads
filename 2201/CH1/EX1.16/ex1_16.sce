// Exa 1.16
clc;
clear;
close;
// Given data
M = 55.85;
a = 2.9;// in Å
a = a * 10^-8;// in cm
Rho = 7.87;// in gm/cc
N_A = 6.023*10^23;
n = (Rho*N_A*((a)^3))/M;// atom per unit
disp("A lattice having "+string(round(n))+" atom per unit cell is a BCC structure");
