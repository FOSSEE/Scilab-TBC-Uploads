// Scilab code Ex8.9 Page:250 (2006)
clc; clear;
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
mu = 9.29e-024;    // Bohr magneton, J/T
mu_0 = 1.26e-006;    // Permeability of free space, Sq. tesla cubic meter per joule
E_F= 11.63*e;    // Fermi energy, J
N = 6.02e+028;    // Atomic concentration, atoms per cubic meter 
chi_Total = 2.2e-005;   // Paramagnetic susceptibility of Mg, S.I. units
chi_Pauli = 3*N*mu^2*mu_0/(2*E_F);    // Pauli diamagnetism, S.I. units
chi_dia = chi_Total - chi_Pauli;    // Diamagnetic contribution to magnetic susceptibility

printf("\nThe Pauli spin susceptibility of Al = %5.3e S.I. units", chi_Pauli);
printf("\nThe diamagnetic contribution to magnetic susceptibility of Al = %5.3e S.I. units", chi_dia);

// Result 
// The Pauli spin susceptibility of Al = 5.277e-06 S.I. units
// The diamagnetic contribution to magnetic susceptibility of Al = 1.672e-05 S.I. units 
