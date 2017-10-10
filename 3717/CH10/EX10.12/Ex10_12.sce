// Ex10_12 Page:224 (2014)
clc;clear;
e = 1.6e-019;    // Charge on an electron, C
epsilon_0 = 8.85e-012;    // Absolute electric permittivity of free space, coulomb-square/N/Sq.m
r_0 = 0.32e-009;    // Inter-ionic distance of KCl, m
V = -e/(4*3.14*epsilon_0*r_0);    // Potential energy of K+ and Cl- ions, eV
printf("\nThe potential energy of K+ and Cl- ions = %5.3f eV", V);

// Result
// The potential energy of K+ and Cl- ions = -4.498 eV 