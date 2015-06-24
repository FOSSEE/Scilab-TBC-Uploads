// Scilab Code Ex1.23:: Page-1.31 (2009)
clc; clear;
v = 740;    // Speed of the electron, m/s
m = 9.1e-031;     // Mass of the electron, kg
h = 6.6e-034;    // Planck's constant, Js
p = m*v;    // Momentum of the electron, kg-m/s
frac_v = 0.05/100;  // Correctness in the speed 
delta_p = p*frac_v;    // Uncertainty in momentum, kg-m/s
delta_x = h/(4*%pi)*1/delta_p;  // Uncertainty in position, m

printf("\nThe minimum accuracy to locate the position of an electron = %4.2e m",delta_x);

// Result 
// The minimum accuracy to locate the position of an electron = 1.56e-04 m  
