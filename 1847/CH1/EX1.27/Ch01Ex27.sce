// Scilab Code Ex1.27:: Page-1.32 (2009)
clc; clear;
h = 6.6e-034;    // Planck's constant, Js
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
E = 0.15*1e+03*e;   // Energy of the electron, J
m = 9.1e-031;  // Mass of electron, kg
delta_x = 0.5e-010; // Position uncertainty of electron, m
p = (2*m*E)^(1/2);  // Momentum of the electron, kg-m/s
// delta_x*delta_p = h/(4*%pi), solving for delta_p
delta_p = h/(4*%pi*delta_x);    // Uncertainty in momentum of electron, kg-m/s
frac_p = delta_p/p*100;     // Percentage uncertainty in momentum of electron, kg-m/s

printf("\nThe percentage uncertainty in momentum of electron = %2d percent", frac_p);

// Result 
// The percentage uncertainty in momentum of electron = 15 percent   
