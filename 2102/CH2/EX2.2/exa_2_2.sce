// Exa 2.2
clc;
clear;
close;
// Given data
miu_n= 0.36;// in m^2/vs
miu_p= 0.17;// in m^2/vs
ni= 2.9*10^19;// in /m^3
q=1.6*10^-19;// in C
sigma_i= q*ni*(miu_n+miu_p);// in (Ωm)^-1
disp(sigma_i,"Intrinsic conductivity of Ge in (Ωm)^-1 is :")
