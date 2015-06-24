// Exa 1.4
clc;
clear;
close;
format('v',6)
// Given data
N_D = 10^21;// in /m^3
N_A = 5*10^20;// in /m^3
NdasD = N_D-N_A;// in /m^3
n = NdasD;// in /m^3
miu_n = 0.18;// in m^2/V-s
q = 1.6*10^-19;// in C
// The conductivity of silicon,
sigma = q*n*miu_n;// in (ohm-m)^-1
disp(sigma,"The conductivity of Si sample in (ohm-m)^-1 is");
