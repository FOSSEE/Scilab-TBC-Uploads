// Scilab code Ex10.4: Pg.423 (2008)
clc; clear;
M = 63.5;    // Molar mass of Copper, g/mol
rho = 8.93e+06;    // Mass density of copper, g/m^3
N_A = 6.02e+23;    // Avagadro's number
n_a = (rho*N_A)/M;    // Density of atoms, atoms/m^3
r = 0.815e-03;    // Radius of Cu wire, m
A = %pi*r^2;    // Area of cross-section of Cu wire, m^2
I = 1;    // Current through Cu wire, A
e = 1.6e-19;    // Electronic charge, C
// Assuming one free electron per Cu atom, the density of electrons is equal to density of atoms, therefore
n_e = n_a;    // Density of electrons, electrons/m^3
v_d = I/(A*n_e*e);    // Drift velocity of electrons in Cu, m/s
printf("\nThe drift velocity of electrons in Cu = %4.2e m/s", v_d);

// Result
// The drift velocity of electrons in Cu = 3.54e-005 m/s 