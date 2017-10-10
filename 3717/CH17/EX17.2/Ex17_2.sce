// Ex17_2 Page:324 (2014)
clc;clear;
e = 1.6e-019;    // Energy equivalent of 1 eV, J/eV
R0 = 1.2e-015;    // Nuclear constant, m 
k = 9e+09;    // Coulomb's constant, N-Sq.m/Sq.C
q1 = 2*1.6e-019;    // Charge on alpha particle, C
q2 = 90*1.6e-019;    // Charge on thorium nucleus, C
A_alpha = 4;    // Mass number of helium nucleus
A_Th = 228;    // Mass number of thorium
r = R0*(A_alpha^(1/3) + A_Th^(1/3));    // Distance between He and Th, m
PE = k*q1*q2/(r*e)*1e-006;    // Potential energy of the system, MeV
printf("\nThe kinetic energy of the alpha particle when it is far away = %4.1f MeV", PE);

// Result
// The kinetic energy of the alpha particle when it is far away = 28.1 MeV 