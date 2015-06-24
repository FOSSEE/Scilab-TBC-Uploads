// Exa 2.21.16
clc;
clear;
close;
// Given data
e= 1.6*10^-19;// electron charge in C
h = 6.626 * 10^-34;// in J-s
h= h/e;// in eV
c = 3 * 10^8;// in m/s
lembda = 5490 * 10^-10;// in m
f = c/lembda;
E = h * f;// in eV
disp(E,"The energy band gap of the semiconductor material in eV is");
