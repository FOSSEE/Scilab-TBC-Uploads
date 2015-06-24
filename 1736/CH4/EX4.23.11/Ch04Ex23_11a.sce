// Scilab Code Ex4.9a: Page-141 (2006)
clc; clear;
E_F = 1;    // For simplicity assume Fermi energy to be unity, eV
k = 1.38e-023;      // Boltzmann constant, J/mol/K
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
dE = 0.2;        // Exces energy above Fermi level, eV
T = 0+273;        // Room temperature, K
E = E_F + dE;    // Energy of the level above Fermi level, eV
f_E = 1/(exp((E-E_F)*e/(k*T))+1);    // Occupation probability of the electron at 0.1 eV above E_F
printf("\nAt 273 K:");
printf("\n=========");
printf("\nThe occupation probability of electron at %3.1f eV above Fermi energy = %4.2e", dE, f_E);
T = 100+273;    // Given temperature of 100 degree celsius, K
f_E = 1/(exp((E-E_F)*e/(k*T))+1);    // Occupation probability of the electron at 0.1 eV below E_F
printf("\n\nAt 373 K:");
printf("\n=========");
printf("\nThe occupation probability of electron at %3.1f eV above Fermi energy = %4.2e", dE, f_E);

// Result 
// At 273 K:
// =========
// The occupation probability of electron at 0.2 eV above Fermi energy = 2.05e-004

// At 373 K:
// =========
// The occupation probability of electron at 0.2 eV above Fermi energy = 1.99e-003 
