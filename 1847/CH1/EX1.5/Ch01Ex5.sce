// Scilab Code Ex1.5: Page-1.6 (2009)
clc; clear;
m = 1.67e-027;      // Mass of the neutron, kg
h = 6.626e-034;     // Planck's constant, Js
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
E = 1e+04*e;    // Energy of the neutron, J
// As E = 1/2*m*v^2, solving for v
v = sqrt(2*E/m);    // Velocity of the neutron, m/s
lambda = h/(m*v);  // de Broglie wavelength of the neutron, m
printf("\nThe velocity of the neutron = %4.2e m/s", v);
printf("\nThe de Broglie wavelength of the neutron = %4.2e m", lambda);

// Result 
// The velocity of the neutron = 1.38e+006 m/s
// The de Broglie wavelength of the neutron = 2.87e-013 m 

