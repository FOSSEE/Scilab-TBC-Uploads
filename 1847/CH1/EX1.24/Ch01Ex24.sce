// Scilab Code Ex1.24: : Page-1.31 (2009)
clc; clear;
h = 6.6e-034;    // Planck's constant, Js
h_cross = h/(2*%pi);    // Reduced Planck's constant, Js
delta_t = 1e-010;   // Uncertainty in time, s
// From Energy-time uncertainty, 
// delta_E*delta_t = h_cross/2, solving for delta_E
delta_E = h_cross/(2*delta_t);  // Uncertainty in energy of an emitted photon, J 

printf("\nThe uncertainty in energy of an emitted photon = %5.3e eV", delta_E/1.6e-019);

// Result 
// The uncertainty in energy of an emitted photon = 3.283e-06 eV
