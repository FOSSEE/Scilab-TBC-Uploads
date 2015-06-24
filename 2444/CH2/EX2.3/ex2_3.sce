// Exa 2.3
clc;
clear;
close;
// Given data
format('v',8)
r = 1.278;// in angstrum
At = 63.5;// atomic weight
N_A = 6.023*10^23;// Avagadro number
a = (4*r)/sqrt(2);// in angstrum
a = a * 10^-10;// in m
m = At/N_A;// in gm
m = m * 10^-3;// in kg
V = (a^3);// in m^3
n = 4;// number of atoms present in one unit cell of Cu
rho = (m*n)/V;// in kg/m^3
disp(rho,"The density of crystal in kg/m^3 is");
