// Exa 1.19
clc;
clear;
close;
format('v',5)
// Given data
E_FminusE_V = 0.39;// in eV
kT = 0.026;// in ev
//N_A1 = n_V * (%e^(-E_FminusE_V)/kT)       (i)
// N_A2=3*N_A1=n_V * (%e^(-E_F2minusE_V)/kT)    (ii)
//From eq(i) and (ii)
E_F2minusE_V = kT*(15-log(3));// in eV
disp(E_F2minusE_V,"The new position of fermi level in eV is");
