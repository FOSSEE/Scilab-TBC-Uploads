// Exa 2.21.3
clc;
clear;
close;
// Given data
n_i = 1.5 * 10 ^10;// in /cm^3 for silicon
N_d = 10^17;// in atoms/cm^3
n_o = 10^17;// electrons/cm^3
KT = 0.0259;
// E_r - E_i = KT * log(n_o/n_i)
del_E = KT * log(n_o/n_i);// in eV
disp("The energy band for this type material is Ei + "+string(del_E)+" eV");
