// Exa 2.8
clc;
clear;
close;
format('v',7)
// Given data
d = 10.5;// in gm/cc
At = 108;// atomic weight
N_A = 6.025*10^23;// in /gm mole
r = 10^-3;// in m
q = 1.6*10^-19;// in C
// The number of electrons per unit volume
n = (N_A/At)*d;// in /cm^3
n = n * 10^6;// in /m^3
A = %pi*((r)^2);// in m^2
I = 2;// in A
// Evaluation of drivt velocity with the help of current
// I = q*n*A*V;
V = I/(n*q*A);// in m/s
disp(V,"The drift velocity in m/s is");

// Note: Calculation in the book is wrong, so the answer in the book is wrong.
