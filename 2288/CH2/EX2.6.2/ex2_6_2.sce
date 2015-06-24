// Exa 2.6.2
clc;
clear;
close;
// Given data
E_g = 0.75;// in eV
e = 1.6*10^-19;// in C
h = 6.63*10^-34;// in J
c = 3*10^8;// in m/s
//Formula E_g = (h*c)/(lembda*e);
lembda = (h*c)/(E_g*e);// in m
lembda = lembda * 10^10;// in Å
disp(lembda,"The wavelength in Å is");
