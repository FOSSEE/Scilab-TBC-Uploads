// Scilab code Ex10.1 : Pg:405 (2008)
clc;clear;
E = 1000;    // Electric field applied to sodium chloride crystal, V/m
P = 4.3e-008;    // Polarization, Coulomb per meter square
epsilon_0 = 8.85e-012;    // Permittivity of free space, force per meter
// Since P = epsilon_0*(epsilon_r-1)*E, solving for epsilon_r
epsilon_r = 1 + P/(epsilon_0*E);    // Relative permittivity of sodium chloride
printf("\nThe relative permittivity of sodium chloride = %4.2f ", epsilon_r);

// Result 
// The relative permittivity of sodium chloride = 5.86  