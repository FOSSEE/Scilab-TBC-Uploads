// Exa 2.23
clc;
clear;
close;
// Given data
ni=2.5*10^19;// in /m^3
miu_n= 0.38;// in m^2/v-sec
miu_p= 0.18;// in m^2/v-sec
q=1.6*10^-19;// in C
sigma= q*ni*(miu_n+miu_p);// in (Ωm)^-1
disp(sigma,"Conductivity in (Ωm)^-1 is : ")
