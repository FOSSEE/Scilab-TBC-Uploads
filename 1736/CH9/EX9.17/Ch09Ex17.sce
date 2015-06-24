// Scilab code Ex9.17 Page:317 (2006)
clc; clear;
T_c = 39.4;    // Transition temperature of a superconductor, K
Lambda = 1;    // Electron-phonon coupling constant for a superconductor
mu_prime= 0.15;    // Reduced mass of a superconductor, amu
// As T_c = Theta_D/1.45*exp(-1.04*(1+Lambda)/(Lambda-mu_prime*(1+0.62*Lambda))), solving for Theta_D
Theta_D = T_c*1.45*exp(1.04*(1+Lambda)/(Lambda-mu_prime*(1+0.62*Lambda)));

printf("\nThe Debye temperature of a BCS superconductor = %3d K", Theta_D);

// Result 
// The Debye temperature of a BCS superconductor = 891 K 
