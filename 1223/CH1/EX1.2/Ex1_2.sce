clear;
clc;
//Example 1.2 
T=300;//(°K)Given Temperature
Nd=10^16;//(cm^-3)Donor concentration
n_i=1.5*10^10;//(cm^-3)intrinsic carrier concentration
//since Nd>>n_i
n_o=10^16;//(cm^-3)electron concentration
//by using formula ::n_i^2=n_o*p_o
p_o=(n_i)^2/Nd;//hole concentration
printf('\nelectron concentration= %.e cm^-3',n_o);
printf('\nhole concentration =%e cm^-3',p_o);
