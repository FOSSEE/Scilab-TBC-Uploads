// Scilab Code Ex1.26:  Page-1.32 (2009)
clc; clear;
h = 6.6e-034;    // Planck's constant, Js
delta_x_max = 8.5e-014;   // Uncertainty in length, m
m = 1.67e-027;  // Mass of proton, kg
// From Position-momentum uncertainty, 
// delta_p_min*delta_x_max = h, solving for delta_p_min
delta_p_min = h/delta_x_max;    // Minimum uncertainty in momentum of electron, kg-m/s
p_min = delta_p_min;    // Minimum momentum of the proton, kg.m/s
delta_E = p_min^2/(2*m); 
   
printf("\nThe minimum uncertainty in momemtum of proton = %4.2e kg-m/s", p_min);
printf("\nThe kinetic energy of proton = %6.3e eV", delta_E/1.6e-019);

// Result 
// The minimum uncertainty in momemtum of proton = 7.76e-21 kg-m/s
// The kinetic energy of proton = 1.128e+05 eV 
