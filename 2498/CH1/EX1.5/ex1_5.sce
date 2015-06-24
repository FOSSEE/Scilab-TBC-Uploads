// Exa 1.5
clc;
clear;
close;
format('e',8)
// Given data
At = 63.54;// atomic weight of copper
d = 8.9;// density in gm/cm^3
n = 6.023*10^23/At*d;// in electron/cm^3
q = 1.63*10^-19;// in C
miu = 34.8;// in m^2/V-s
// The conductivity of copper,
sigma = n*q*miu;// in mho/cm
disp(sigma,"The conductivity of copper in mho/cm is");
