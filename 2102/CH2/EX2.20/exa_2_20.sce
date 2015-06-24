// Exa 2.20
clc;
clear;
close;
// Given data
N_D= 5*10^22/10^8;
q=1.6*10^-19;// in C
ni= 1.45*10^10;// per m^3
miu_n= 1300;// in m^2/Vs
// n*p= ni^2 or N_D*p = ni^2
p= ni^2/N_D;// in /cm^3
sigma= q*miu_n*N_D;// in (Ωcm)^-1
rho= 1/sigma;//in Ωcm
disp(rho,"Resistivity in Ωcm is : ")
