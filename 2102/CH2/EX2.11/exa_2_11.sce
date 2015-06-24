// Exa 2.11
clc;
clear;
close;
// Given data
miu_n= 1700;//in cm^2/Vs
miu_p= 560;//in cm^2/Vs
ni= 2.5*10^10;// in /cm^3
q=1.6*10^-19;// in C
sigma= q*ni*(miu_n+miu_p);//in (Ωcm)^-1
rho= 1/sigma;// in Ωcm
disp(sigma,"Conductivity of intrinsic sample in (Ωcm)^-1 is : ")
disp(rho,"Resistivity of intrinsic sample in Ωcm")
