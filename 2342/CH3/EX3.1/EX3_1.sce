// Exa 3.1
format('v',6)
clc;
clear;
close;
// Given data
N_d = 10^17;// atoms/cm^3
n_i = 1.5 * 10^10;// in /cm^3
n_o = 10^17;// in cm^3
// p_o * n_o = (n_i)^2
p_o = (n_i)^2 / n_o;//in holes/cm^3
disp(p_o,"The hole concentration at equilibrium in holes/cm^3 is");
