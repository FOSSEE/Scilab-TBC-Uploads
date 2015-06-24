// Exa 2.25
clc;
clear;
close;
// Given data
q=1.6*10^-19;// in C
miu_n= 0.18;// in m^2/v-s
N_D= 10^21;// per m^3
N_A= 5*10^20;// per m^3
N_deshD= N_D-N_A;// per m^3
n=N_deshD;// per m^3
sigma= q*n*miu_n;// in (Ωm)^-1
disp(sigma,"Conductivity of the silicon sample in (Ωm)^-1 is : ")
