// Scilab Code Ex1.29:: Page-1.33 (2009)
clc; clear;
h = 6.6e-034;    // Planck's constant, Js
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
v = 450;        // Velocity of the electron, m/s
delta_v = v*0.05/100;    // Uncertainty in velocity of the particle, m/s
m = 9.1e-031;  // Mass of electron, kg
// delta_x*delta_p = h/(4*%pi), solving for delta_x
delta_x = h/(4*%pi*m*delta_v); // Position uncertainty of particle, m

printf("\nThe position uncertainty of moving electron = %4.2e m", delta_x);

// Result 
// The position uncertainty of moving electron = 2.57e-04 m 
