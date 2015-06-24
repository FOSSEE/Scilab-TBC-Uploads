// Scilab Code Ex5.12: Page-181 (2006)
clc; clear;
mu_B = 9.24e-027; // Bohr's magneton, J/T
N_Ef = 0.826;   // Density of states at fermi energy, electrons/atom-eV
N = 6.023e+23;  // Avogadro's number
e = 1.6e-019;   // Energy equivalent of 1 eV, J
chi_Pauli = mu_B^2*N_Ef*N/e;
printf("\nPauli spin susceptibility of Mg = %5.2e cgs units", chi_Pauli/1e-03);

// Result
// Pauli spin susceptibility of Mg = 2.65e-07 cgs units 
