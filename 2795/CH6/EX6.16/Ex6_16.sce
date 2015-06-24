// Scilab Code Ex6.16: Page-230 (2014)
clc; clear;
h = 6.62e-034;    // Planck's constant, Js
h_bar = h/(2*%pi);    // Reduced Planck's constant, Js
c = 3.00e+008;    // Speed of light, m/s
e = 1.602e-019;    // Energy equivalent of 1 eV, J
m = 0.511e+006;    // Energy equivalent of electron rest mass, eV
V0 = 10;    // Height of potential barrier, eV
E = 5;    // Given energy of the incident electrons, eV
l = h_bar*c/(2*sqrt(2*m*(V0 - E))*1e-009*e);    // Penetration distance into the barrier when the probability of the particle penetration drops to 1/e, nm
printf("\nThe penetration distance for a %d eV electron approaching a step barrier of %d eV = %5.3f nm", E, V0, l);

// Result
// The penetration distance for a 5 eV electron approaching a step barrier of 10 eV = 0.044 nm 