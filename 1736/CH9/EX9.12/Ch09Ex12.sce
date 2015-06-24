// Scilab code Ex9.12 Page:298 (2006)
clc; clear;
Theta_D = 350;    // Debye temperature, kelvin
Lambda = 0.828;    // Electron-phonon coupling constant
mu_prime = 0.1373;    // Reduced mass of a superconductor, amu
T_c = Theta_D/1.45*exp(-1.04*(1+Lambda)/(Lambda-mu_prime*(1+0.62*Lambda)));     // Transition temperature of a superconductor using McMillan formula, K

printf("\nThe transition temperature of the superconductor using McMillan formula = %5.2f K", T_c);

// Result 
// The transition temperature of the superconductor using McMillan formula = 11.26 K 
