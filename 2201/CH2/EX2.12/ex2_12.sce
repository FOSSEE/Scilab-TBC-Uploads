// Exa 2.12
clc;
clear;
close;
// Given data
d = 5.32;// in gm/cc
N_A = 6.02*10^23;// in atoms/gm.mole
At = 72.6;//atomic weight
Miu = 3800;// in cm^2/v.s
n_d = (N_A/At) * d;// in /cm^3
n_d = n_d * 10^-8;// in /cc
e = 1.6*10^-19;// in C
Sigma = n_d * Miu * e;// in mho/cm
disp(Sigma,"The conductivity of specimen in mho/cm is");
