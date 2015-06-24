// Scilab code Ex9.1: Pg.366-367 (2008)
clc; clear;
// Part (a)
E_Na = 5.14;    // Ionization energy of Na, eV
E_F = 3.40;    // Electron affinity of F, eV
E_ion = E_Na-E_F;    // Energy needed to form Na+ and F- ions, eV
printf("\nThe energy needed to form Na+ and F- ions = %4.2f eV", E_ion);

// Part (b)
e = 1.60e-19;    // Electronic charge, C
k = 8.99e+09;    // Coulomb's constant, N-m^2/C^2
r_o = 1.93e-10;    // Equilibrium separation of Na+ & F- ions, m
U = -k*e^2/(r_o*e);    // Electrosatic potential energy, eV 
printf("\nThe electrostatic potential energy of the Na+ and F- ions at their equilibrium separation = %4.2f eV", U);

// Part (c)
U_c = U + E_ion;    // Net electrostatic potential, eV
E_d = 4.99;    // Measured dissociation energy, eV
E_ex = U_c + E_d;    // Potential energy due to exclusion-principle repulsion, eV
printf("\nThe potential energy due to repulsion of ions at the equilibrium separation = %4.2f eV", -E_ex);

// Result
// The energy needed to form Na+ and F- ions = 1.74 eV
// The electrostatic potential energy of the Na+ and F- ions at their equilibrium separation = -7.45 eV
// The potential energy due to repulsion od ions at the equilibrium separation = 0.72 eV 