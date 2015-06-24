// Scilab code Ex9.13 : Page:298 (2006)
clc; clear;
Theta_D = 350;    // Debye temperature, kelvin
Lambda = 0.641;    // Electron-phonon coupling constant
mu_prime = 0.143;    // Reduced mass of a superconductor, amu
T_c = Theta_D/1.45*exp(-1.04*(1+Lambda)/(Lambda-mu_prime*(1+0.62*Lambda)));   // Superconducting transition temperature of a superconductor using mcMillan's formula, K

printf("\nThe superconducting transition temperature of a superconductor using McMillan formula = %5.3f K", T_c);

// Result 
// The superconducting transition temperature of a superconductor using McMillan formula = 5.043 K
