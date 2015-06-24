// Exa 4.28
clc;
clear;
close;
kT= 0.025;// in eV (Let as take T=300 K)
E= 1.42/2;// in ev (Let E = E_C-E_F)
FE= %e^(-E/kT);
disp(FE,"The probability of exciting electrons at conduction band will be ")
