// Exa 1.21
clc;
clear;
close;
format('e',8)
// Given data
A = 0.001;// in cm^2
l = 20;// in µm
l = l * 10^-4;// in cm
V = 20;// in V
I = 100;// in mA
I = I * 10^-3;// in A
R = V/I;// in ohm
// R = l/(sigma*A);
sigma = l/(R*A);// in (ohm-cm)^-1
miu_n = 1350;// in cm^2/V-s
q = 1.6*10^-19;// in C
// sigma = n*q*miu_n or
// The concentration of donor atoms 
n = sigma/(q*miu_n);// in cm^-3
disp(n,"The concentration of donor atoms in cm^-3 is");
