// Scilab code Exa15.6 : : Page-654 (2011)
clc; clear;
r = 35;        // Radius of the reactor, centi metre
B_sqr = (%pi/r)^2;    // Geometrical buckling, per square centi metre
D = 0.220;        // Diffusion coefficient, centi metre
sigma_a_f = 0.057;    // Rate of absorption of thermal neutrons
v = 2.5;        // Number of fast neutrons emitted
tau = 50;        // Age of the neutron
sigma_f = 0.048;    // Rate of fission
sigma_a_c = -1/(1+tau*B_sqr)*(-v*sigma_f+sigma_a_f+B_sqr*D+tau*B_sqr*sigma_a_f);        // Controlled cross section
printf("\nThe required controlled cross section = %6.4f ", sigma_a_c);

// Result
// The required controlled cross section = 0.0273  