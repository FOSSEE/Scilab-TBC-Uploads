// Scilab Code Ex9.2.8: Page-416 (2008)
clc; clear;
h = 6.63e-034;    // Planck's constant, Js
h_bar = h/(2*%pi);    // Reduced Planck's constant, Js
delta_t = 1e-008;    // Time during which the radiation is emitted, s
delta_E = h_bar/delta_t;    // Minimum uncertainty in energy of emitted light, J
// As delta_E = h*delta_nu from Planck's quantum theory, solving for delta_nu
delta_nu = delta_E/h;    // Minimum uncertainty in frequency of emitted light, Hz
printf("\nThe minimum uncertainty in energy of emitted light = %5.3e J", delta_E);
printf("\nThe minimum uncertainty in frequency of emitted light = %4.2e Hz", delta_nu);

// Result 
// The minimum uncertainty in energy of emitted ligh = 1.055e-026 J
// The minimum uncertainty in frequency of emitted ligh = 1.59e+007 Hz 