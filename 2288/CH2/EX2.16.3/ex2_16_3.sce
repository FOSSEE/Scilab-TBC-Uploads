// Exa 2.16.3
clc;
clear;
close;
// Given data
format('v',7)
d = 10.5;// in gm/cc
At = 108;// atomic weight
N_A = 6.025*10^23;// in /gm mole
r = 10^-3;// in m
q = 1.6*10^-19;// in C
n = (N_A/At)*d;// in /cm^3
n = n * 10^6;// in /m^3
A = %pi*((r)^2);// in m^2
I = 2;// in A
// I = q*n*A*v;
v = I/(n*q*A);// in m/s
disp(v,"The drift velocity in m/s is");

// Note: There is calculation error to find the value of drift velocity (i.e v), so the answer in the book is wrong.
