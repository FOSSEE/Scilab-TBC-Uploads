// Scilab code Ex8.8 Page:249 (2006)
clc; clear;
mu = 5.78e-005;    // Bohr magneton, eV/T
NE_F = 0.826;    // Density of states at fermi level, electrons/atom-J
chi_Pauli = mu^2*NE_F/1e-004;    // Pauli diamagnetism, cgs units
chi_Core = -4.2e-06;    // Core diamagnetism, cgs units
chi_Landau = -1/3*chi_Pauli;    // Landau diamagnetism, cgs units
chi_Total = chi_Core+ chi_Pauli+chi_Landau;    // Paramagnetic susceptibility of Mg, cgs units

printf("\nThe paramagnetic susceptibility of Mg  = %5.2e cgs units",chi_Total);

// Result 
// The paramagnetic susceptibility of Mg  = 1.42e-05 cgs units 
