// Exa 3.22
clc;
clear;
close;
// Given data
h = 6.64*10^-34;// in J-s
q=1.6*10^-19;// in C
h= h/q;// in eV
c = 3*10^8;// in m/s
lembda = 0.87*10^-6;// in m
E_g = (h*c)/lembda;// in eV
disp(E_g,"The band gap in eV is");
