// Exa 2.23
clc;
clear;
close;
// Given data
e = 1.6*10^-19;// in C
R_H = 0.0145;// in m^3/coulomb
Miu_e = 0.36;// m^2/v-s
E = 100;// V/m
n = 1/(e*R_H);// in /m^3
J= n*e*Miu_e*E;// in A/m^2
disp(J,"The current density in A/m^2 is");
