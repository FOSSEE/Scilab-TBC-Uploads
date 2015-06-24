// Scilab Code Ex6.9: Page-215 (2014)
clc; clear;
h = 6.62e-034;    // Planck's constant, Js
h_bar = h/(2*%pi);    // Reduced Planck's constant, Js
c = 3.00e+008;    // Speed of light, m/s
e = 1.602e-019;    // Energy equivalent of 1 eV, J
m = 938.3e+006;    // Energy equivalent of proton mass, eV
L = 1e-005;    // Diameter of the nucleus, nm
E1 = %pi^2*(h_bar*c/(e*1e-009))^2/(2*L^2*m*1e+006);      // Energy of the ground state of proton, MeV
E2 = 4*E1;    // Energy of first excited state of proton, MeV
delta_E = E2 -E1;    // Transition energy of the proton inside the nucleus, MeV
printf("\nThe transition energy of the proton inside the nucleus = %1d MeV", delta_E);

// Result
// The transition energy of the proton inside the nucleus = 6 MeV 