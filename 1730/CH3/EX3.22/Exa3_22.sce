//Exa3.22
clc;
clear;
close;
// given data
N_A=8*10^14;// in /cm^3
N_D=N_A;
n_i=2*10^13;// in /cm^3
k=8.61*10^-5;// in eV/K
T=300;// in K
V_0=k*T*log(N_D*N_A/n_i^2);
disp("Potential barrier is : "+string(V_0)+" V");