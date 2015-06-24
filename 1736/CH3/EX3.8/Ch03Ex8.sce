// Scilab Code Ex3.8: Page-90 (2006)
clc; clear;
N = 6.023e+023; // Avogadro's number, per kmol
e = 1.602e-019;   // Energy equivalent of 1 eV, J/eV
k = 1.38e-023;  // Boltzmann constant, J/K
R = N*k;    // Molar gas constant, J/kmol/K
E_F = 3.2;    // Fermi energy of Cu, eV
theta_D = 150;  // Debye temperature of Cu, K
T = 20;    // Given temperature, K
T_F = E_F/k;    // Fermi temperature of Cu, K
C_e = %pi^2/2*R*(T/(T_F*e));    // Electronic heat capacity of Cu, J/mol/K
C_l = 12/5*(%pi^4*R)*(T/theta_D)^3;     // Lattice heat capacity of Cu, J/kmol/K
printf("\nThe electronic heat capacity of Na = %5.3e J/mol/K", C_e);
printf("\nThe lattice heat capacity of Na = %6.4e J/mol/K", C_l);

// Result 
// The electronic heat capacity of Na = 2.208e-002 J/mol/K
// The lattice heat capacity of Na = 4.6059e+000 J/mol/K 
