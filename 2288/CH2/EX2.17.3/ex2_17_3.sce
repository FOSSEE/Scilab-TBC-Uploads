//Exa 2.17.3
clc;
clear;
close;
//Given data
AvagadroNumber = 6.02 * 10^23;// in atoms/gm.mole
at_Ge = 72.6;// atom weight of Ge
e = 1.6 * 10^-19;// in C
D_Ge = 5.32;// density of Ge in gm/c.c
Mu = 3800;// in cm^2/v.s.
C_Ge = (AvagadroNumber/at_Ge) * D_Ge;// concentration of Ge atoms in per cm^3
n_d = C_Ge/10^8;// in per cc
Sigma = n_d * Mu * e;// in mho/cm
disp(Sigma,"The conductivity in mho/cm is");
