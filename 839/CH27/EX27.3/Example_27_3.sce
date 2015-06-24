//clear//
clear;
clc;

//Example 27.3
//Given
sigma = 2.5; //[erg/cm^3]
T = 300; //[K]
N = 6.0222*10^23;
R = 8.3134*10^7; //[erg/g mol-K]
//Solution
M = 74.56; //[Molecular weight]
rho = 1.988; //[g/cm^3]
nu = 2;
VM = M/rho //[cm^3/g mol]
//Using Eq.(27.11)
//Exponential term, excluding 's'
A = 16*%pi*VM^2*N*sigma^3*10/(3*(T*R)^3*nu^2)
B0 = 1;
s(1) = sqrt(-A/log(B0/10^25));
//For B0;
s = s(1):0.0001:0.029;
B0 = exp(57.565)*exp(-A./s.^2);
plot(s,B0)
title('B0 vs s')
xlabel('s')
ylabel('B0')
