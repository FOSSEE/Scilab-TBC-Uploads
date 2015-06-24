// Exa 3.6
clc;
clear;
close;
// Given data
Sigma_n = 0.1;// in (ohm-cm)^-1
Miu_n = 1300;
q = 1.6*10^-19;// in C
n_n = Sigma_n/(Miu_n*q);// in electrons/cm^3 
disp(n_n*10^6,"Concentration of electrons per m^3 is ");
n_i = 1.5*10^10;
p_n = ((n_i)^2)/n_n;// in holes/cm^3
p_n = p_n * 10^6;// in holes/m^3
disp(p_n,"Concentration of holes per m^3 is");
