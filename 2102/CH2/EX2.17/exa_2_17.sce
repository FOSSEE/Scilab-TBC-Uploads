// Exa 2.17
clc;
clear;
close;
// Given data
miu_n= 0.145;// in m^2/Vs
miu_p= 0.05;// in m^2/Vs
q=1.6*10^-19;// in C
n=10^15;// per m^3
p=10^2;// per m^3
rho= 1/(q*(n*miu_n+p*miu_p));// in Ωm
disp(rho,"The resistivity in Ωm is :")
