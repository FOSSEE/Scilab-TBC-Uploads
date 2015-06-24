// Scilab Code Ex3.17: Page-103 (2006)
clc; clear;
h = 6.624e-034;     // Planck's constant, Js
k = 1.38e-023;  // Boltzmann constant, J/mol/K
q = 1.486e+011;     // Young's modulus of diamond, N/metre-square
rho = 3500;     // Density of diamond, kg/metre-cube
c = sqrt(q/rho);    // Speed of transverse wave through diamond, m/s
m = 12*1.66e-027;      // Atomic weight of carbon, kg
theta_D = (h/k)*c*(3*rho/(4*%pi*m))^(1/3);    // Debye temperature for diamond, K
printf("\nThe Debye temperature for diamond = %4d K", theta_D);

// Result 
// The Debye temperature for diamond = 1086 K 
