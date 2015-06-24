// Scilab code Ex9.6: Pg 317 (2005)
clc; clear;
E_i = 5.14;   // Ionisation energy of Na, eV
n = 3;   // Principal quantum number
Z_eff = sqrt((n^2*E_i)/13.6);    // Effective atmic number
printf("\nEffective atomic number for 3s electron in Na = %4.2f", Z_eff);

// Result
// Effective atomic number for 3s electron in Na = 1.84
