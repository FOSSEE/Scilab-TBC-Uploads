// Exa 2.27
clc;
clear;
close;
// Given data
T1 = 550;// in K
T2 = 300;// in K
N1 = 1.04*10^19;
N_V = N1*((T1/T2)^(3));
N_C = 2.8*10^19;
E_g = -1.12;
KT = 0.0259*(T1/T2);
n_i = sqrt(N_C*N_V*exp(E_g/KT));// in cm^-3
disp(n_i,"The value of n_i in cm^-3 is : ")
//Formula n_o= Nd/2+sqrt((Nd/2)^2+n_i^2) and n_o = 1.05*N_d;
Nd= sqrt(n_i^2/((1.05-1/2)^2-(1/2)^2))
disp(Nd,"The value of N_d in cm^-3 is : ")

