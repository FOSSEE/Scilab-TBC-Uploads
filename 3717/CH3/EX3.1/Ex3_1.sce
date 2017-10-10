// Ex3_1 Page:45 (2014)
clc; clear;
t = 2e-06;  // Thickness of gold foil, m
T = 8;  // Kinetic energy of alpha-particles, MeV
rho = 19.3; // Density of gold foil, g/cm-cube
k = 8.984e+09;  // Coulomb's constant, N-Sq.m/Sq.C
Z = 79; // Atomic number of gold
Z_prime = 2;    // Atomic number of He nucleus
e = 1.6e-019;   // Charge on an electron, C
A = 197;    // Atomic weight of gold
N = 6.02e+023;   // Avogadro's number, atoms/mol
n = N*rho*1e+06/A;    // Number density of atoms, atoms/metre-cube
b = k*Z*Z_prime*e^2/(2*T*1e+06*e);  // Impact parameter for alpha particle, m
f = %pi*b^2*n*t;    // Fraction of alpha-particles scattered at angles greater than 90 degrees
printf("\nFraction of alpha-particles scattered at angles greater than 90 degrees = %3.1e", f);

// Result
// Fraction of alpha-particles scattered at angles greater than 90 degrees = 7.5e-05 

