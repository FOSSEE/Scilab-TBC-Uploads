// Exa 2.34
clc;
clear;
close;
// Given data
miu_e= 0.14;// in m^2/ v-s
miu_p= 0.05;// in m^2/v-s
e=1.6*10^-19;// in C
N=3*10^25;// per m^3
Eg= 1.1;// in eV
Eg= Eg*1.602*10^-19;// in J
k= 1.38*10^-23;// in J/K
T=300;// in K
ni= N*%e^(-Eg/(2*k*T));// in /m^3
sigma= ni*e*(miu_e+miu_p);// in s/m
disp(ni,"The intrinsic carrier concentration in Si in /m^3 is : ")
disp(sigma,"Conductivity of Si in s/m is : ")
