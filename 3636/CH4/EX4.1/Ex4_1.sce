clc;
clear;
del_n0=10^16 //concentration of electrons in cm^-3
tau_n0=5 //excess carrier lifetime in micro-s
t=1 //time in micro-s

//Calculation
del_nt=del_n0*exp(-t/tau_n0)

mprintf("excess electron concentration= %.3g cm^-3",del_nt)
