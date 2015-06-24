// Scilab Code Ex5.6: Page-286 (2008)
clc; clear;
h = 6.62e-034;    // Planck's constant, Js
c = 3e+008;    // Speed of light, m/s
e = 1.6e-019;    // Energy quivalent of 1 eV, J
phi = 2.28*e;    // Work function for material, J
m = 9.1e-031;    // Mass of an electron, kg
lambda = 3000e-010;    // Wavelength of incident radiation, m
E = h*c/lambda;    // Energy of the incidnt radiation, J
KE = E - phi;    // Kinetic energy of the ejected photoelectrons, J
v = sqrt(2*KE/m);    // Velocity of emitted electron, m/s
printf("\nThe velocity of the emitted electron = %4.2e m/s", v);

// Result
// The velocity of the emitted electron = 8.08e+005 m/s 