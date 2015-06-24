// Scilab Code Ex6.12: Page-351 (2008)
clc; clear;
h = 6.6e-034;    // Planck's constant, Js
m = 9.1e-031;    // Mass of an electron, kg
e = 1.6e-019;    // Energy equivalent of 1 eV, J
E_F0 = 5.48;     // Fermi energy of silver at 0 K, eV
N_bar = (8*m/h^2)^(3/2)*%pi/3*(E_F0*e)^(3/2);    // Number density of conduction electrons in silver at 0 K, per cc
printf("\nThe number density of conduction electrons in silver at 0 K = %3.1e per cc", N_bar*1e-006);

// Result
// The number density of conduction electrons in silver at 0 K = 5.9e+022 per cc 