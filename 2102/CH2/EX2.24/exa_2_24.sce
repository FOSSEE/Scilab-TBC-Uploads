// Exa 2.24
clc;
clear;
close;
// Given data
rho= 0.5;// in 
miu_n= 0.39;// in m^2/v-sec
miu_p= 0.19;// in m^2/v-sec
q=1.6*10^-19;// in C
sigma= 1/rho;// in (Ωm)^-1
// Formula sigma= q*ni*(miu_n+miu_p)
ni= sigma/(q*(miu_n+miu_p));// in /m^3
disp(ni,"The intrinsic carrier concentration of germanium in /m^3 is : ")
