// Scilab code Ex4.2: Pg.155 (2008)
clc; clear;
rho = 19.3;    // Density of foil, g/cm^3
N_A = 6.02e+023;    // Avagadro's number, atoms/mol
M = 197;    // Molar mass, gm/mol
n = (rho*N_A*1e+06)/M    // Number of foil atoms per unit volume, atoms/cm^3
t = 1e-06;    // Thickness of foil, m
Z = 79;    // Atomic number of Gold
k = 9e+09;    // Coloumb's constant, N-m^2/C^2
K_a = 5e+06;    // Kinetic energy of alpha particle, eV
e = 1.6e-19;    // Charge on electron
theta = 90;    // Scattering angle, degrees
q_a = 2*e;    // Charge on alpha particle, C
Q = Z*e;    // Charge on gold nucleus, C
b = k*q_a*Q/(2*K_a*e)*cotd(theta/2);    // Impact parameter, m
f = %pi*b^2*n*t;    // Scattered fraction
printf("\nThe scattered fraction of alpha particles = %3.1e", f);

// Result
// The scattered fraction of alpha particles = 9.6e-005 