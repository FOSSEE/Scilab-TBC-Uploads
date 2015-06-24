// Scilab Code Ex4.2a: Page-138 (2006)
clc; clear;
f_E = 0.01;     // Occupation probability of electron
E_F = 1;    // For simplicity assume Fermi energy to be unity, eV
k = 1.38e-023;      // Boltzmann constant, J/mol/K
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
dE = 0.5;        // Exces energy above Fermi level, eV
E = E_F + dE;    // Energy of the level above Fermi level, eV
// We have, f_E = 1/(exp((E-E_F)*e/(k*T))+1), solving for T
T = (E-E_F)*e/k*1/log(1/f_E-1);   // Temperature at which the electron will have energy 0.1 eV above the Fermi energy, K
printf("\nThe temperature at which the electron will have energy %3.1f eV above the Fermi energy = %4d K", dE, T);

// Result 
// The temperature at which the electron will have energy 0.5 eV above the Fermi energy = 1261 K 



