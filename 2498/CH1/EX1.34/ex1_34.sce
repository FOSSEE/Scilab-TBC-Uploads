// Exa 1.34
clc;
clear;
close;
format('v',6)
// Given data
D = 0.102;// in cm 
A = (%pi*(D^2))/4;// in cm^2
sigma_p = 0.286;// in (ohm-cm)^-1
q = 1.6*10^-19;// in C
miu_p = 500;
// Formula used, sigma_p = q*miu_p*N_A;
N_A = sigma_p/(q*miu_p);// in atoms/cm^3
V1 = 5;// in V
V2 = 0.35;// in V
Vb = V1+V2;// in V
// The transition capacitance,
C_T = 2.92*10^-4*((N_A/Vb)^(1/2))*A;// in pF/cm^2
disp(C_T,"The value of C_T in pf/cm^2 is");
