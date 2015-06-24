// Scilab Code Ex6.13: Page-351 (2008)
clc; clear;
h = 6.6e-034;    // Planck's constant, Js
m = 9.1e-031;    // Mass of an electron, kg
e = 1.6e-019;    // Energy equivalent of 1 eV, J
E_F0_Be = 14.44      // Fermi energy of Be at 0 K, eV
N_bar_Be = 24.2e+022;   // Number density of conduction electrons in Be at 0 K, per cc
N_bar_Cs = 0.91e+022;    // Number density of conduction electrons in Cs at 0 K, per cc
E_F0_Cs = E_F0_Be*(N_bar_Cs/N_bar_Be)^(2/3);    // Fermi energy of conduction electrons in cesium, eV
printf("\nThe Fermi energy of conduction electrons in cesium = %5.3f eV", E_F0_Cs);

// Result
// The Fermi energy of conduction electrons in cesium = 1.621 eV 
// The answer is given wrongly in the textbook