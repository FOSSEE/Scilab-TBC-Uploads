//fiber optic communications by joseph c. palais
//example 3.2
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
clear all
//given
SW=1//spectral width of laser in nm
lambda1=0.82e-6//wave length in m
d=10//path length in km
lambda2=1.5e-6//wave length in m
M1=110//Material dispersion ps/(nmxKm) for lambda1
M2=15//Material dispersion ps/(nmxKm) for lambda2

//to find
delta_taubyL1=M1*SW*d// pulse spreading per unit length in ps for lambda1
delta_taubyL2=M2*SW*d// pulse spreading per unit length in ps for lambda2
//multiplication by 1e-3 converts unit from ps to ns
mprintf("Pulse spreading case 1=%fns",delta_taubyL1*1e-3)
mprintf("\nPulse spreading case 2=%fns",delta_taubyL2*1e-3)
