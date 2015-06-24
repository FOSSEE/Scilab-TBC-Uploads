// Exa 1.22.7
clc;
clear;
close;
// Given data
Rho = 2.48;// in gm/cc
K = 39;// molecular weight of K
F = 19; // molecular weight of F
M = K+F;// molecular weight of KF
n = 4;
N_A = 6.023*10^23;
//Formula Rho = (n*M)/(N_A*((a)^3));
a = ( (n*M)/(N_A*Rho) )^(1/3);// in cm
a = a * 10^8;// in Å
r = (a*sqrt(2))/4;// in Å
r = 2*r;// in Å
disp(r,"The distance between ions in Å is");

