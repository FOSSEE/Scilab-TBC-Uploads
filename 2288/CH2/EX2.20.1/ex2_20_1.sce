//Exa2.20.1
clc;
clear;
close;
// Given data
n_i = 1.4 * 10^18;// in /m^3
n_D = 1.4 * 10^24;// in /m^3
n=n_D;// in /m^3
p = n_i^2/n;// in /m^3
R = n/p;
disp(R,"The ratio of electrons to hole concentration is");
