clc;
clear;
del_n0=10^16 //concentration of electrons in cm^-3
tau_n0=5 //excess carrier lifetime in s
tau_n01=5*10^-6 //excess carrier lifetime in micro-s
t=5 //in micro-s

//Calculation
del_nt=del_n0*exp(-t/tau_n0) //in cm^-3
Rn1=del_nt/tau_n01

mprintf("Recombination rate= %.1e cm^-3 s^-1",Rn1)
