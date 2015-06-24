// Exa 2.21
clc;
clear;
close;
// Given data
n_i = 1.4*10^18;// in /m^3
n_D = 1.4*10^24;// in /m^3
n = n_D;// in /m^3
p = n_i^2/n;// in /m^3
disp(p,"Concentration of holes per m^3 is");
R_e = n/p;// Ratio of electron 
disp(R_e,"Ratio of electron to hole concentration is");
