//Exa3.24
clc;
clear;
close;
format('v',12)
// given data
E_G=0.72;// in eV
E_F=E_G/2;// in eV
k=8.61*10^-5; // in eV/K
T=300;// in K
// Formula n_C/n = 1/1+%e^(E_G-E_F)/k*T
// Let n_C/n = N
N=1/(1+%e^((E_G-E_F)/(k*T)));

disp("Fraction of the total number of electrons (conduction band as well as valence band) : "+string(N));
