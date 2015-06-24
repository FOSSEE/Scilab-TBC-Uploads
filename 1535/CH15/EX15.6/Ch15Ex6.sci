// Scilab Code Ex15.6: Page-324 (2010)
e = 1.6e-019;    // Energy equivalent of 1 eV, J/eV
v = 2;    // Valency of Zn atom
N = v*6.02e+023;    // Avogadro's number, per mol
T = 300;    // Temperature of Zn, K
E_F = 9.38;    // Fermi energy of Zn, eV
k = 1.38e-023;    // Boltzmann constant, J/K
h = 6.626e-034;    // Planck's constant, Js
C_e = %pi^2*N*k^2*T/(2*E_F*e);    // Electronic heat capacity of Zn, J/mol/K
printf("\nThe molar electronic heat capacity of zinc = %5.3f J/mol/K", C_e);

// Result
// The molar electronic heat capacity of zinc = 0.226 J/mol/K 