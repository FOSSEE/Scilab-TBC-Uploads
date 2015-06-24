// Scilab Code Ex3.10: Page-91 (2006)
clc; clear;
N = 6.023e+023; // Avogadro's number, per kmol
e = 1.602e-019;   // Energy equivalent of 1 eV, J/eV
k = 1.38e-023;  // Boltzmann constant, J/K
R = N*k;    // Molar gas constant, J/kmol/K
E_F = 7;    // Fermi energy of Hf, eV
theta_D = 343;  // Debye temperature of Hf, K
T_F = E_F/k;    // Fermi temperature of Hf, K
// As C_l = 12/5*(%pi^4*R)*(T/theta_D)^3 and C_e = %pi^2/2*R*(T/(T_F*e)) so that
// For C_l = C_e, we have
T = sqrt((%pi^2/2*R*1/(T_F*e))/(12/5*%pi^4*R)*theta_D^3); // Required temperature when C_l = C_e, K
printf("\nThe temperature at which lattice specific heat equals electronic specific heat for Cu = %4.2f K", T);

// Result 
// The temperature at which lattice specific heat equals electronic specific heat for Cu = 3.24 K 
