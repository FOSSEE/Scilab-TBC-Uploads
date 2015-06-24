clc();
clear;
//Given :
mu_p = 1.2 ;// dipole moment in debye units
T = 300 ; // Temperature in Kelvin ( 273+27 = 300 K)
k = 1.38*10^-23 ; //  in J/K
per = 0.5/100 ; // percentage of saturated polarisation
// 0.05*N*mu_p = (N*(mu_p)^2*E/(3*k*T))
E = (3*k*T*per)/(mu_p*3.33*10^-30); // External field in V/m
printf(" E = %.2f x 10^7 V/m",E*10^-7);
