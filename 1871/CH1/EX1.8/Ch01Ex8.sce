// Scilab code Ex1.8:  Pg:20 (2008)
clc;clear;
m = 1.675e-027;    // Mass of a neutron, kg
h = 6.625e-034;    // Planck's constant, joule-sec
E = 1.6e-005;    // Kinetic energy of the neutron, joule
// Since (1/2)*m*v^2 = 1.6e-005, solving for v 
v = (2*E/m)^(1/2);
Lambda = h/(m*v);    // de Broglie wavelength of a neutron, m
printf("\nThe de-Broglie wavelength of neutron = %4.2e m", Lambda);

// Result 
// The de-Broglie wavelength of neutron = 2.86e-018 m