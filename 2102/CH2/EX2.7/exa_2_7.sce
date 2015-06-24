// Exa 2.7
clc;
clear;
close;
// Given data
miu_n= 3900;// in cm^2/Vs
miu_p= 1900;// in cm^2/Vs
ni= 2.5*10^10;// in /cm^3
Nge= 4.41*10^22;// in /cm^3
q=1.6*10^-19;// in C
N_D= Nge/10^8;// in /cm^3
n=N_D;// approx
p= ni^2/N_D;// in /cm^2
sigma= q*n*miu_n;// in (Ωcm)^-1
rho= 1/sigma;// in Ωcm
disp(rho,"Resistivity of the doped germanium in Ωcm is : ")
