// Exa 1.18
clc;
clear;
close;
format('v',7)
// Given data
E_CminusE_F = 0.24;// in eV
T = 300;// in K
T1 = 350;// in K
// E_CminusE_F = K*T*log(n_c/N_D) (i)
// E_CminusE_F1 =K*T1*log(n_C/N_D) (ii)
// From eq(i) and (ii)
E_CminusE_F1 = E_CminusE_F*(T1/T);// in eV
disp("The new position of the Fermi level lies "+string(E_CminusE_F1)+" eV below the conduction band")

