// Scilab Code Ex11.1: Page-559 (2011)
clc;clear;
H_0 = 1;....// Amplitude off field vector,in A/m
mu_0 = 12.56e-7;....// Permeability,in weber/A-m 
eps = 8.85e-12;....// Permittivity in free space,in C/N-meter-square
// From the relation between the amplitude of the field vector E and vector H of an EM wave in free space 
E_0 = H_0*(sqrt(mu_0/eps));
printf("\nThe amplitude of field vector E in free space = %5.1f V/m",E_0); 


// Result
// The amplitude of field vector E in free space = 376.7 V/m 
