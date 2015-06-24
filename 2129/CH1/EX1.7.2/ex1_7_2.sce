// Exa 1.7.2
clc;
clear;
close;
// Given data
h = 6.625 * 10^-34;// in J
c = 3 * 10^8;// in J
lambda_Gr = 17760 * 10^-10;// in m
lambda_Si = 11000;// in A°
lambda_Si = lambda_Si * 10^-10;// in m
E_g = (h*c)/lambda_Si;// in J
E_g = E_g /(1.6*10^-19);// in eV
disp(E_g,"The energy gap of Si in eV is ");
E_g1 = (h*c)/lambda_Gr;// in J
E_g1 = E_g1/(1.6 * 10^-19);// in eV
disp(E_g1,"The energy gap of Germanium in eV is ");

