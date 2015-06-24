// Exa 1.20
clc;
clear;
close;
// Given data
Rho = 2.48;// in gm/c.c
n = 4;
M = 58;
N_A = 6.023*10^23;
a = ( (n*M)/(Rho*N_A) )^(1/3);// in cm
a = a * 10^8;// in Å
r = (a*sqrt(2))/n;// in Å
r = 2*r;// in Å
disp(r,"The center to center distance between ions in Å is");

