// Exa 2.1
format('v',7)
clc;
clear;
close;
// Given data
lembda = 11000;// in Å
lembda = lembda * 10^-10;// in m
h = 6.625*10^-34;// Planck constant
c = 3*10^8;//speed of light in m/s
e = 1.6*10^-19;//charge of electron in C
// Energy of the incident photon should at least be, h*v= Eg, so
E_g = (h*c)/(lembda*e);// in eV
disp(E_g,"The energy gap in eV is");
