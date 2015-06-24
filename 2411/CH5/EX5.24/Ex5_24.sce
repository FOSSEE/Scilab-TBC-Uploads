// Scilab Code Ex5.24: Page-295 (2008)
clc; clear;
h = 6.62e-034;    // Planck's constant, Js
e = 1.602e-019;    // Energy equivalent of 1 eV, J
delta_t = 1e-008;    // Life time of excited state of an atom, s
delta_E = h/(2*%pi*delta_t);    // Minimum uncertainty in the energy of the excited state of the atom, J 
printf("\nThe minimum uncertainty in the energy of the excited state of the atom = %3.1e eV", delta_E/e);

// Result
// The minimum uncertainty in the energy of the excited state of the atom = 6.6e-008 eV 