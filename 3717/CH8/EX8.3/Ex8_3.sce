// Ex8_3 Page:164 (2014)
clc;clear;
T = 300;    // Room temperature, K
E_F = 5.49;    // Fermi energy, eV
k = 1.38e-023;    // Boltzmann constant, J/K
e = 1.602e-019;    // Energy conversion factor, J/eV
C_v = %pi^2*k*T/(2*E_F*e);    // Molar heat capacity, J/mol/K
printf("\nThe molar heat capacity = %6.4f R", C_v);

// Result
// The molar heat capacity = 0.0232 R 
