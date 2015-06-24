// Exa 1.21
clc;
clear;
close;
// Given data
miu_n= 0.13;// in m^2/v-sec
lip= 0.05;// in m^2/v-sec
n=5*10^28/10^9;// in /m^3
q= 1.6*10^-19;// in C
sigma= q*n*miu_n;// in (Ωm)^-1
disp(sigma,"The conductivity of silicon material in (Ωm)^-1 is : ")
