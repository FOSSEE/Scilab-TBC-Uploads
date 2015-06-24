// Exa 2.19
clc;
clear;
close;
// Given data
rho= 1.2;// in Ωm
miu_n= 0.14;// in m^2/Vs
q=1.6*10^-19;// in C
ni= 1.8*10^16;// per m^3
// sigma = 1/rho = q*n*miu_n
n= 1/(rho*q*miu_n);// per m^3
p= ni^2/n;// per m^3
disp(n,"The value of n in per m^3 is :")
disp(p,"The value of p in per m^3 is :")
