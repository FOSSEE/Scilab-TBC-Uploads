// Scilab code Ex8.7: Pg.332-333 (2008)
clc; clear;
k = 1.38e-023;    // Boltzmann constant, J/m/K
T = 2.7;    // Temperature to which the blackbody is cooled, K
c = 3e+008;    // Speed of light, m/s
h = 6.63e-034;    // Planck's constant, Js
rho_photon = 8*%pi*(k*T/(c*h))^3*integrate('x^2/(exp(x)-1)', 'x', 0, 10);
printf("\nThe photom density of the universe = %4.2e photons/metre-cube", rho_photon);

// Result
// The photom density of the universe = 3.96e+008 photons/metre-cube 