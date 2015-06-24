// Exa 2.8
clc;
clear;
close;
// Given data
N_A = 6.025*10^23;// in /gm mole
d = 10.5;// in gm/cc
At = 108;// atomic weight of 
n = (N_A/At)*d;// in /cm^3
n = n * 10^6;// in /m^3
r = 10^-3;// in m
A = %pi * ((r)^2);// in m^2
q = 1.6*10^-19;
I = 2;// in A
V = I/(n*q*A);// in m/s
disp(V,"The drift velocity of an electron in m/s is");

// Note: There is calculation error to find the value of V (i.e. drift velocity), So the answer in the book is wrong
