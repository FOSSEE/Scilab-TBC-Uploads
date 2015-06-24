// Scilab Code Ex6.14: Page-229 (2014)
clc; clear;
h = 6.62e-034;    // Planck's constant, Js
h_bar = h/(2*%pi);    // Reduced Planck's constant, Js
c = 3.00e+008;    // Speed of light, m/s
e = 1.602e-019;    // Energy equivalent of 1 eV, J
m = 0.511e+006;    // Energy equivalent of electron rest mass, eV
V0 = 10;    // Height of potential barrier, eV
E = 5;    // Energy of the incident electrons, eV
L = 0.8e-009;    // Width of the potential barrier, m
k = sqrt(2*m*(V0 - E))*e/(h_bar*c);    // Schrodinger's constant, per m
T = (1 + V0^2*sinh(k*L)^2/(4*E*(V0 - E)))^(-1);    // Transmission electron probability
printf("\nThe fraction of electrons tunneled through the barrier = %3.1e", T);

// Result
// The fraction of electrons tunneled through the barrier = 4.4e-008 