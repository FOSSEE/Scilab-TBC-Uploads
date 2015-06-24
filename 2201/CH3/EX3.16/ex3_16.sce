// Exa 3.16
clc;
clear;
close;
// Given data
h = 6.626 * 10^-34;// in J-s
q= 1.6*10^-19;// in C
h= h/q;// in eV
c = 3*10^8;
lembda = 5490*10^-10;// in m
E = h*c/lembda;// in eV
disp(E,"The energy band gap in eV is");
