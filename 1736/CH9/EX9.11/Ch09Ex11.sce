// Scilab code Ex9.11 Page:298 (2006)
clc; clear;
k = 1.38e-023;   // Boltzmann constant, J/mol/K
e = 1.6e-019;      // Energy equivalent of 1 eV, eV/J
Theta_D = 96;    // Debye temperature, kelvin
N0 = 0.3678;    // Density of states at Fermi energy
V = 1;          // Volume of the material, metre cube
T_c = 1.14*Theta_D*exp(-1/(N0*V));    // Critical temperature of the material, K
Delta_0 = k*Theta_D/sinh(1/(N0*V)); // Energy gap at absolute zero, J
printf("\nThe transition temperature of a material = %4.2f K", T_c);
printf("\nThe energy gap of a material = %5.3e eV", Delta_0/e);

// Result 
// The transition temperature of a material = 7.22 K
// The energy gap of a material = 1.097e-03 eV 
