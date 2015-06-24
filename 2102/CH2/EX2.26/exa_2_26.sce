// Exa 2.26
clc;
clear;
close;
// Given data
q=1.6*10^-19;// in C
miu_n= 0.36;// in m^2/v-s
miu_p= 0.17;// in m^2/v-s
ni= 2.5*10^19;// per m^3
sigma= q*ni*(miu_n+miu_p);// in s/m
rho= 1/sigma;// in Ωm
disp(sigma,"Conductivity of Ge in s/m is : ")
disp(rho,"Resistivity in Ωm is : ")
