// Scilab Code Ex15.2: Page-323 (2010)
N = 6.02e+026;    // Avogadro's number, per kmol
k = 1.38e-023;    // Boltzmann constant, J/K
h = 6.626e-034;    // Planck's constant, Js
f_D = 40.5e+012;    // Debye frequency for Al, Hz
T = 30;    // Temperature of carbon, Ks
theta_D = h*f_D/k;    // Debye temperature, K
C_l = 12/5*%pi^4*N*k*(T/theta_D)^3;    // Lattice specific heat of carbon, J/k-mol/K
printf("\nThe lattice specific heat of carbon = %4.2f J/k-mol/K", C_l);

// Result
// The lattice specific heat of carbon = 7.13 J/k-mol/K 