// Scilab Code Ex1.28:: Page-1.33 (2009)
clc; clear;
h = 6.6e-034;    // Planck's constant, Js
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
delta_v = 7.54e-015;    // Uncertainty in velocity of the particle, m/s
m = 0.25e-06;  // Mass of particle, kg
// delta_x*delta_p = h/(4*%pi), solving for delta_x
delta_x = h/(4*%pi*m*delta_v); // Position uncertainty of particle, m

printf("\nThe position uncertainty of particle = %4.2e m", delta_x);

// Result 
// The position uncertainty of particle = 2.79e-14 m   
