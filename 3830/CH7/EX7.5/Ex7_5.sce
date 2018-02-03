// Exa 7.5

clc;
clear;

// Given

L = 0.1 ; // Initial length of wire in m
R = 120; // Initial resistance of wire in ohms
delta_L =  0.1*10^-3;// change in length of wire in m
delta_R = 0.21; // change in resistance of wire in ohms

// Solution

e = delta_L/L;
G = (delta_R/R)/e;

printf(' The gauge factor of device = %.2f \n',G);
