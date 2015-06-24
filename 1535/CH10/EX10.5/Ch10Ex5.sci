// Scilab Code Ex10.5: Page-224 (2010)
N_A = 6.023e+023;    // Avogadro's number
k = 1.38e-023;    // Boltzmann constant, J/K
T = 293;    // Temperature of sodium, K
E_F = 3.24;    // Fermi energy of sodium, eV
e = 1.6e-019;    // Energy equivalent of 1 eV, J/eV
C_v = %pi^2*N_A*k^2*T/(2*E_F*e);    // Molar specific heat of sodium, J/mole/K
printf("\nThe molar specific heat of sodium = %4.2f J/mole/K", C_v);

// Result
// The molar specific heat of sodium = 0.32 J/mole/K