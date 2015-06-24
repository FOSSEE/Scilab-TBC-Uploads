// Exa 1.4
clc;
clear;
close;
// Given data
n = 4;
r = 1.278;// in Å
a = (4*r)/(sqrt(2));// in Å
a = a * 10^-10;// in m
V = (a)^3;// in m^3
At_W = 63.5;// atomic weight
N_A = 6.023*10^23;
m = At_W /N_A;// in gm
m = m*10^-3;// in kg
Rho = (m*n)/V;// in kg/m^3
disp(Rho,"Density of the crystal in kg/m^3 is");


// Note: There is calculation error to find the value of density. So the answer in the book is wrong.
