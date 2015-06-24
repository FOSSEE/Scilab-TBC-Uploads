//Exa3.5
clc;
clear;
close;
// given data
n_i=1.4*10^18;// in m^3
N_D=1.4*10^24;// in m^3
n=N_D;// (approx)
p=n_i^2/n;
// let Ratio of electron to hole concentration = r
r=n/p;
disp("Ratio of electron to hole concentration is : "+string(r));