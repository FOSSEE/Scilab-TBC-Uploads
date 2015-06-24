// Scilab Code Ex9.1: Page-303 (2014)
clc; clear;
k = 1.38e-023;    // Boltzmann constant, J/K
N_A = 6.023e+023;    // Avogadro's number
T = 293;    // Room temperature, K
e = 1.6e-019;    // Energy equivalent of 1 eV, J
// For a single molecule
K_bar_single = 3/2*k*T/e;    // Mean translational kinetic energy of a single gas molecule, J
// For a 1 mole of molecules
K_bar_mole = K_bar_single*N_A*e;    // Mean translational kinetic energy of 1 mole of gas molecules, J
printf("\nThe mean translational kinetic energy of the single idela gas molecule = %5.3f eV", K_bar_single);
printf("\nThe mean translational kinetic energy of the one mole of ideal gas molecules = %4d J", ceil(K_bar_mole));

// Result
// The mean translational kinetic energy of the single idela gas molecule = 0.038 eV
// The mean translational kinetic energy of the one mole of ideal gas molecules = 3654 J 