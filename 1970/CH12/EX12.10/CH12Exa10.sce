// Scilab code Exa12.10 : : Page-576 (2011)
clc; clear;
theta = 3.5*%pi/180;  // Reflection angle, radian
d = 2.3e-10;          // Lattice spacing, metre
n = 1;                // For first order
h = 6.6256e-34;       // Planck's constant, joule sec
m = 1.6748e-27;       // Mass of the neutron, Kg
E = n^2*h^2/(8*m*d^2*sin(theta)^2*1.6023e-19);        // Energy of the neutrons, electron volts
printf("\nThe energy of the neutrons = %4.2f eV", E);

// Result
// The energy of the neutrons = 1.04 eV 
 