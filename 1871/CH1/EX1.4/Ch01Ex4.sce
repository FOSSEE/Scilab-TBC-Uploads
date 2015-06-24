// Scilab code Ex1.4: Pg:19 (2008)
clc;clear;
m = 1.674e-027;    // Mass of neutron, kg
h = 6.60e-034;    // Planck's constant, joule-sec
Lambda = 1e-010;    // de-Broglie wavelength of neutron, 
E = h^2/(2*m*Lambda^2);    // Energy of neutron, joule
printf("\nThe energy of neutron in electron volt = %4.2e eV", E/1.6e-019);

// Result 
// The energy of neutron in electron volt = 8.13e-002 eV