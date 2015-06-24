// Exa 4.29
clc;
clear;
close;
k= 1.38*10^-23;
T= 300;// in K (assume)
V_D= 0.7;// The depletion voltage for silicon
e=1.6*10^-19;// in C
// n_n/n_p= p_p/p_n = %e^(e*V_D/(k*T))
ratio= %e^(e*V_D/(k*T));// ratio of majority to minority charge carriers in n and p of a silicon semiconductor
disp(ratio,"Ratio of majority to minority charge carriers in n and p of a silicon semiconductor is : ")
