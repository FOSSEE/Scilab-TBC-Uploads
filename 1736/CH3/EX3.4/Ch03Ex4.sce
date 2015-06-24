// Scilab Code Ex3.4: Page-89 (2006)
clc; clear;
N = 6.02e+23;  // Avogadro's number, per mole
k = 1.38e-023;  // Boltzmann constant, J/K
R = N*k;    // Molar gas constant, J/mol/K
theta_D = 2230;        // Debye temperature for diamond, K
T = 300;        // Room temperature, K
C_v = 12/5*(%pi^4*R)*(T/theta_D)^3; // Specific heat capacity per unit volume of diamond, J/mol-K
printf("\nThe heat capacity per unit volume of diamond = %4.2f J/mol-K", C_v);

// Result 
// The heat capacity per unit volume of diamond = 4.73 J/mol-K
