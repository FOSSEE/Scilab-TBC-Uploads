// Exa 2.2
clc;
clear;
close;
// Given data
E_g = 0.75;// in eV
q=1.6*10^-19;// in C
E_g = E_g*q;// in J
h = 6.63*10^-34;// in J
c = 3*10^8;// in m/s
lembda = (h*c)/E_g;// in m
lembda = lembda * 10^10;// in Å
disp(lembda,"The wavelength in Å is");
