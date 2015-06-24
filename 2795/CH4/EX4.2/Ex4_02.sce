// Scilab Code Ex4.2: Page-137 (2013)
clc; clear
rho = 19.3;    // Density of gold, g/cc
N_A = 6.02e+023;    // Avogadro's number
N_M = 1;    // Number of atoms per molecule
M_g = 197;    // Gram atomic mass of gold, g/mol
n = rho*N_A*N_M/(M_g*1e-006);    // Number density of gold atoms, atoms/metre-cube
Z1 = 79;    // Atomic number of gold
Z2 = 2;    // Atomic number of He nucleus
t = 1e-006;    // Thickness of the gold foil, m
e = 1.602e-019;    // Charge on an electron, C
k = 9e+009;    // Coulomb constant, N-Sq.m/C^2
theta = 90;    // Angle of deflection of alpha particle, degrees
K = 7.7;    // Kinetic energy of alpha particles, MeV
f = %pi*n*t*(Z1*Z2*e^2*k/(2*1.6e-013*K))^2*cotd(theta/2)^2; // The fraction of alpha particles deflected
printf("\nThe fraction of alpha particles deflected = %1.0e", f);

// Result
// The fraction of alpha particles deflected = 4e-005 