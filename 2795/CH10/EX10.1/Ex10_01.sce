// Scilab Code Ex10.1 : Page-342 (2014)
clc; clear;
m = 2.33e-026;    // Mass of a nitrogen atom, kg
R = 1.1e-010;    // Interatomic separtion between two nitrogen atoms, m
h = 6.626e-034;    // Planck's constant, Js
e = 1.6e-019;    // Energy equivalent of 1 eV, J
h_bar = h/(2*%pi);    // Reduced Planck's constant, Js
I = m*R^2/2;    // Momemt of rotational inertia of nitrogen gas molecule, kg-Sq.m
l = 1;    // Rotational angular momentum quantum number
E_rot = h_bar^2*l*(l+1)/(2*I);    // The energy for lowest rotational state of the nitrogen molecule, J
printf("\nThe energy for lowest rotational state of the nitrogen molecule = %4.2e eV", E_rot/e);

// Result
// The energy for lowest rotational state of the nitrogen molecule = 4.93e-004 eV  