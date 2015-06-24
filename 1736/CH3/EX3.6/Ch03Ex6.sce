// Scilab Code Ex3.6: Page-89 (2006)
clc; clear;
N = 6.023e+023; // Avogadro's number, per kmol
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
k = 1.38e-023;  // Boltzmann constant, J/K
R = N*k;    // Molar gas constant, J/kmol/K
E_F = 7;    // Fermi energy of Cu, eV
theta_D = 348;  // Debye temperature of Cu, K
T = 300;    // Room temperature, K
T_F = E_F/k;    // Fermi temperature of Cu, K
C_e = %pi^2/2*R*1e+03*(T/(T_F*e));    // Electronic heat capacity of Cu, J/kmol/K
C_l = 12/5*(%pi^4*R)*(T/theta_D)^3;     // Lattice heat capacity of Cu, J/kmol/K
printf("\nThe electronic heat capacity of Cu = %3d J/kmol/K", round(C_e));
printf("\nThe lattice heat capacity of Cu = %4.2e J/mol/K", C_l);

// Result 
// The electronic heat capacity of Cu = 152 J/kmol/K
// The lattice heat capacity of Cu = 1.24e+003 J/mol/K 
