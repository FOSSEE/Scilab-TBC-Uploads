// Exa 1.15
clc;
clear;
close;
// Given data
q=1.6*10^-19;// in C
ni= 1.5*10^16;// in /m^3
miu_n= 0.13;// in m^3/vs
miu_p= 0.05;// in m^3/vs
sigma= q*ni*(miu_n+miu_p);// in Ω/m
disp(sigma,"The conductivity in Ω/m is : ")
