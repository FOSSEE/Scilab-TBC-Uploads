// Exa 2.5
clc;
clear;
close;
// Given data
N_V = 1.04*10^19;// in cm^-3
T1 = 400;// in K
T2 = 300;// in K
del_E = 0.27;//value of E_F-E_V in eV
K = 0.0259;
N_V= N_V*(T1/T2)^(3/2);// in cm^-3
KT = K*(T1/T2);// in eV
p_o = N_V*exp( (-del_E)/(KT) );// in /cm^3
disp(p_o,"The hole concentration per cm^3 is");
