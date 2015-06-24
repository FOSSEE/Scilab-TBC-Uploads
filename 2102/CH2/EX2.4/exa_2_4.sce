// Exa 2.4
clc;
clear;
close;
// Given data
N_D= 10^21;// in /m^3
N_A= 2*10^20;// in /m^3
miu_n= 0.15;// in m^2/vs
N_DeshD= N_D-N_A;// in /m^3
n=N_DeshD;// in /m^3
q=1.6*10^-19;// in C
sigma= q*n*miu_n;// in (Ωm)^-1
disp(sigma,"Conductivity of silicon in (Ωm)^-1 is : ")
