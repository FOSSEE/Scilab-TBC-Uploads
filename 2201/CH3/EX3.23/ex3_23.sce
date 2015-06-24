// Exa 3.23
clc;
clear;
close;
// Given data
alpha = 5*10^4;// in cm^-1
l = 0.46*10^-4;// in cm
hv = 2;// in eV
I_o = 10^-2;// in W
I_t = I_o*exp(-alpha*l);// in W
A_p = I_o-I_t;//absorbed power in W or J/s
disp(A_p,"Total energy absorbed in J/s is");
c = 1.43;
A_E = (hv-c)/hv*A_p;// in J/s
disp(A_E,"Rate of excess thermal energy in J/s is");
e = 1.6*10^-19;// in C
P = A_p/(e*hv);//Perfect quantum efficiency in photon/s
disp(P,"Perfect quantum efficiency in photon/s is");
