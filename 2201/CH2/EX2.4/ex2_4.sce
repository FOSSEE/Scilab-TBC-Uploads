// Exa 2.4
clc;
clear;
close;
// Given data
K = 8.63*10^-5;
T = 300;// in K
N_C = 2.8*10^19;// in cm^-3
del_E = 0.25;
f_F = exp( (-del_E)/(K*T) );
disp(f_F,"The probability is : ");
n_o = N_C*exp( (-del_E)/(K*T) );// in cm^-3
disp(n_o,"The thermal equillibrium electron concentration in cm^-3 is");
