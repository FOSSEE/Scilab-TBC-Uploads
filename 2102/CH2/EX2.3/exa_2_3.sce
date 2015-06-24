// Exa 2.3
clc;
clear;
close;
// Given data
rho= 0.60;// in Ωm
q=1.6*10^-19;// in C
miu_n= 0.38;// in m^2/vs
miu_p= 0.18;// in m^2/vs
sigma= 1/rho;// in (Ωm)^-1
ni= sigma/(q*(miu_n+miu_p));// in /m^3
disp(ni,"The intrinsic carrier concentration per meter cube is :")
