// Exa 1.22
clc;
clear;
close;
// Given data
miu_p= 0.05;// in m^2/v-sec
rho=5*10^28/10^8;// in /m^3
q= 1.6*10^-19;// in C
sigma= q*rho*miu_p;// in (Ωm)^-1
disp(sigma,"The conductivity of silicon material in (Ωm)^-1 is : ")
