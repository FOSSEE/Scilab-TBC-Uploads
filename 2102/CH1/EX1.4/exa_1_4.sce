// Exa 1.4
clc;
clear;
close;
// Given data
format('v',13)
ni= 2.5*10^19;
q= 1.6*10^-19;// in C
miu_n= 0.36;
miu_p= 0.17;
sigma= q*ni*(miu_n+miu_p);// in s/m
rho= 1/sigma;// in Ωm
disp(sigma,"The conductivity of Ge in s/m is ")
disp(rho,"The resistivity of Ge in Ωm is : ")
