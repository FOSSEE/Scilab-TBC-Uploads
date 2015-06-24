// Scilab Code Ex8.5:: Page-8.9 (2009)
clc; clear;
lambda = 7000;  // Wavelength of the emitted light, angstrom
k = 8.6e-005;   // Boltzmann constant, eV/K
dE = 12400/lambda;  // Energy difference of the levels, eV
T = 27+273;   // Temperatures of the state, K
N2_ratio_N1 = exp(-(dE/(k*T)));  // Relative population
printf("\nThe relative population of two states in He-Ne laser at %d K = %3.1e", T, N2_ratio_N1);


// Result 
// The relative population of two states in He-Ne laser at 300 K = 1.5e-30 
// The answer is given wrong in the textbook