// Scilab Code Ex15.4: Page-323 (2010)
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
N = 6.02e+023;    // Avogadro's number, per mol
T = 0.05;    // Temperature of Cu, K
E_F = 7;    // Fermi energy of Cu, eV
k = 1.38e-023;    // Boltzmann constant, J/K
h = 6.626e-034;    // Planck's constant, Js
theta_D = 348;    // Debye temperature of Cu, K
C_e = %pi^2*N*k^2*T/(2*E_F*e);    // Electronic heat capacity of Cu, J/mol/K
C_V = 12/5*%pi^4*N*k*(T/theta_D)^3; // Lattice heat capacity of Cu, J/mol/K
printf("\nThe electronic heat capacity of Cu = %4.2e J/mol/K", C_e);
printf("\nThe lattice heat capacity of Cu = %4.2e J/mol/K", C_V);

// Result
// The electronic heat capacity of Cu = 2.53e-005 J/mol/K
// The lattice heat capacity of Cu = 5.76e-009 J/mol/K 
