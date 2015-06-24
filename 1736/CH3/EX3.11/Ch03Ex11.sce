// Scilab Code Ex3.11: Page-92 (2006)
clc; clear;
C11 = 1.08e+12, C12 = 0.62e+12, C44 = 0.28e+12;     // Elastic constants of Al, dynes/cm square
a = 4.05e-08;   // Lattice constant for Al cubic structure, cm
rho = 2.70;     // g/cm cube 
k = 1.38e-023;  // Boltzmann constant, J/K
h = 6.626e-034; // Planck's constant, Js
s = 4;  // Number of atoms in Al unit cell
Va = a^3;   // Volume of unit cell, cm cube
theta_D = (3.15/(8*%pi)*(h/k)^3*s/(rho^(3/2)*Va)*(C11-C12)^(1/2)*(C11+C12+2*C44)^(1/2)*C44^(1/2))^(1/3);
printf("\nThe Debye temperature of Al = %3d K", theta_D);

// Result 
// The Debye temperature of Al = 466 K 
