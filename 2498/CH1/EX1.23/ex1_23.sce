// Exa 1.23
clc;
clear;
close;
format('v',6)
// Given data
KT = 26*10^-3;
Nd = 10^15;
n_i = 1.5*10^10;
// The position of the Fermi level 
E_FminusE_Fi = KT*log(abs( Nd/n_i ));// in eV
disp(E_FminusE_Fi,"The position of the Fermi level in eV is");
