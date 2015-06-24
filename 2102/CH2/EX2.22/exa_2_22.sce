// Exa 2.22
clc;
clear;
close;
// Given data
miu_n= 1350;// in cm^2/v-sec
miu_p= 480;// in cm^2/v-sec
ni=1.52*10^10;// in /cm^3
q=1.6*10^-19;// in C
sigma= q*ni*(miu_n+miu_p);// in (Ωcm)^-1
rho= 1/sigma;// in Ωcm
disp(sigma,"Conductivity in (Ωcm)^-1 is : ")
disp(rho,"Resistivity in Ωcm is : ")
