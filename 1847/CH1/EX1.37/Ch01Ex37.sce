// Scilab Code Ex1.37:: Page-1.47 (2009)
clc; clear;
h = 6.6e-034;    // Planck's constant, Js
m = 1.67e-027;   // Electronic mass, kg
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
l = 2.5e-010;   // Length of one dimensional potential box, m
delta_x = 1e-014;   // Uncertainty in position of neutron, m
// From uncertainty principle, 
// delta_x*delta_p = h/(4*%pi), solving for delta_p
delta_p = h/(4*%pi*delta_x);    // Uncertainty in momentum of neutron, kg-m/s
p = delta_p;    // Momemtum of neutron in the box, kg-m/s
KE = p^2/(2*m); // Kinetic energy of neutron in the box, J

printf("\nThe lowest energy of the neutron confined to the nucleus = %4.2f MeV", KE/(e*1e+06));

// Result 
// The lowest energy of the neutron confined to the nucleus = 0.05 MeV 
