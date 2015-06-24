// Scilab Code Ex13.10: Page-652 (2011)
clc;clear;
K = 1.0000684;....// Dielectric constant of He at 1 atm
n = 2.7e+25;....// Density of He at 1 atm and 273 K, atoms/meter-cube
// The atomic polarizibility, alpha = eps_0*(K-1)/n 
// In terms of atomic radius, alpha = 4*%pi*eps_0*R^3 so, we have
R = ((K-1)/(4*%pi*n))^(1/3);    // Radius of He atom, m
printf("\nThe atomic radius of He = %4.2e m ", R);

// Result
// The atomic radius of He = 5.86e-011 m  


