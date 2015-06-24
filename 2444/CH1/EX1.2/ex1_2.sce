// Exa 1.2
clc;
clear;
close;
format('v',7)
// Given data
n_i = 1.4*10^18;// in /m^3
N_D = 1.4*10^24;// in /m^3
n = N_D;// in /m^3
p = (n_i^2)/n;// in /m^3
// Ratio of electron to hole concentation,
ratio = n/p;
disp(ratio,"Ratio of electron to hole concentration is");
