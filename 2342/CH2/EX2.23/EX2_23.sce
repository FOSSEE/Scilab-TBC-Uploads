//Exa 2.23
format('v',6)
clc;
clear;
close;
// Given data
e = 1.6 * 10^-19;// in C
R_H = 0.0145;// in m^3/coulomb
Mu_e = 0.36;// in m^2/v-s
E = 100;// in V/m
n = 1/(e * R_H);// in /m^3
// The current density of specimen 
J = n * e * Mu_e * E;// in A/m^2
disp(J,"The current density of specimen in A/m^2 is");
