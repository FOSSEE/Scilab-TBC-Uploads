// Scilab Code Ex8.4:: Page-8.9 (2009)
clc; clear;
lambda = 7000;  // Wavelength of the emitted light, angstrom
k = 8.6e-005;   // Boltzmann constant, eV/K
dE = 12400/lambda;  // Energy difference of the levels, eV
T = [300 500];   // Temperatures of first and second states, K
for i = 1:1:2
    N2_ratio_N1 = exp(-(dE/(k*T(i))));  // Relative population
    printf("\nThe relative population at %d K = %3.1e", T(i), N2_ratio_N1);
end

// Result 
// The relative population at 300 K = 1.5e-30
// The relative population at 500 K = 1.3e-18 
// The answer is given wrong in the textbook for first part.