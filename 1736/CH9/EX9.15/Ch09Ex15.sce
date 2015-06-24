// Scilab code Ex9.15 Page:314 (2006)
clc; clear;
Theta_D = 490;    // Debye temperature, Kelvin
Lambda = 0.8;    // wavelength of a superconductor, angstorm
mu_prime = 0.13;    // Reduced mass of a superconductor, amu
T_c = Theta_D/1.45*exp(-1.04*(1+Lambda)/(Lambda-mu_prime*(1+0.62*Lambda)));
printf("\nThe superconducting transition temperature of a borocarbide superconductor = %4.1f K", T_c);

// Result 
// The superconducting transition temperature of a borocarbide superconductor = 15.4 K 
