// Scilab Code Ex1.25: : Page-1.31 (2009)
clc; clear;
h = 6.6e-034;    // Planck's constant, Js
delta_x_max = 1e-007;   // Uncertainty in length, m
m = 9.1e-031;   // Mass of an electron, kg
// From Position-momentum uncertainty, 
// delta_p_min = m*delta_v_min = h/delta_x_max, solving for delta_v_min
delta_v_min = h/(delta_x_max*m);    // Minimum uncertainty in velocity of electron, m/s

printf("\nThe minimum uncertainty in velocity of electron = %4.2e m/s", delta_v_min);

// Result 
// The minimum uncertainty in velocity of electron = 7.25e+03 m/s 
