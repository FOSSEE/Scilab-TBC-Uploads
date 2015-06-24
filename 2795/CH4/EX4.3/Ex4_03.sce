// Scilab Code Ex4.3: Page-138 (2013)
clc; clear
rho = 19.3;    // Density of gold, g/cc
N_A = 6.02e+023;    // Avogadro's number
N_M = 1;    // Number of atoms per molecule
M_g = 197;    // Gram atomic mass of gold, g/mol
n = rho*N_A*N_M/(M_g*1e-006);    // Number density of gold atoms, atoms/metre-cube
Z1 = 79;    // Atomic number of gold
Z2 = 2;    // Atomic number of He nucleus
t = 2.1e-007;    // Thickness of the gold foil, m
e = 1.602e-019;    // Charge on an electron, C
k = 9e+009;    // Coulomb constant, N-Sq.m/C^2
r = 1e-002;    // Distance of the alpha particles from the target, m
theta = 45;    // Angle of deflection of alpha particle, degrees
K = 7.7;    // Kinetic energy of alpha particles, MeV
f = n*t*(Z1*Z2*e^2*k)^2/((r*1.6e-013*K)^2*sind(theta/2)^4*16); // The fraction of alpha particles deflected
printf("\nThe fraction of alpha particles deflected at %d degrees = %3.1e per mm square", theta, f/1e+006);

// Result
// The fraction of alpha particles deflected at 45 degrees = 3.2e-007 per mm square 