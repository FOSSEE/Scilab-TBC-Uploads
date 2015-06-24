// Exa 2.27
clc;
clear;
close;
// Given data
e=1.6*10^-19;// in C
miu_n= 0.13;// in m^2/v-s
miu_p= 0.05;// in m^2/v-s
N_D= 5*10^28/(2*10^8);// per m^3
n=N_D;// per m^3
ni= 1.5*10^16;// per m^3
p= ni^2/N_D;// per m^3
sigma= e*(n*miu_n+p*miu_p);// in s/m
disp(sigma,"Conductivity of the intrinsic semiconductor in s/m is ")
