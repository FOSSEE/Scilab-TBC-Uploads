// Exa 2.8
clc;
clear;
close;
// Given data
Nsi = 4.9*10^22;// in /cm^3
ni= 2.5*10^12;// in /cm^3
q=1.6*10^-19;// in C
miu_n= 1600;// in cm^2/Vs
miu_p= 400;// in cm^2/Vs
N_D= Nsi/(100*10^6);
sigma= q*ni*(miu_n+miu_p);// in (Ωcm)^-1
rho= 1/sigma;// in Ωcm
disp(rho,"Resistivity of silicon in Ωcm is :")
n=N_D;// approx
p= ni^2/n;// in /cm^3
sigma= q*n*miu_n;// in (Ωcm)-1
rho= 1/sigma;// in Ωcm
disp(rho,"Resistivity of doped silicon in Ωcm is :")
