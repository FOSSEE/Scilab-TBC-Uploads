// Exa 3.9
format('v',8)
clc;
clear;
close;
// Given data
n_i = 10^16;// in /m3
N_D = 10^22;// in /m^3
n = N_D;// in /m^3
disp(n,"Electron concentration per m^3 is");
p = (n_i)^2/n;// in /m^3
disp(p,"Hole concentration per m^3 is");
