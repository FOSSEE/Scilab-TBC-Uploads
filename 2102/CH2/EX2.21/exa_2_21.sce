// Exa 2.21
clc;
clear;
close;
// Given data
q=1.6*10^-19;// in C
n=8.4*10^28;
rho= 6.51;// in Ω/1000ft
rho= rho/(3.05*10^4);// in Ω/cm
sigma= 1/rho;// in mho/cm
sigma=sigma*10^2;// in mho/m
// sigma= n*q*miu
miu= sigma/(n*q);// in m^2/v-s
disp(sigma,"Conductivity in mho/m is : ")
disp(miu,"Mobility in m^2/v-s is : ")
