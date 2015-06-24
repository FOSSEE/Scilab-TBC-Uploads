//Exa 1.23.4
clc;
clear;
close;
// Given data
B = 0.48;// in wb/m^2
R_H = 3.55 * 10^-4;// in m^3/c
Rho = 0.00912;// in ohm-m
Sigma = 1/Rho;// in (ohm-m)^-1
theta_H = atand( Sigma * B * R_H);// in degree
disp(theta_H,"The hall angle for a hall coefficient in degree is");
