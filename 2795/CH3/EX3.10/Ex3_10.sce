// Scilab Code Ex3.10: Page-106 (2013)
clc; clear
phi = 2.36;    // Work function of sodium, eV
N_A = 6.02e+023;    // Avogadro's number
e = 1.6e-019;    // Energy equivalent of 1 eV, J
I = 1e-008;    // Intensity of incident radiation, W/Sq.m
K = 1.00;    // Kinetic energy of the ejected photoelectron, eV
rho = 0.97;    // Density of Na atoms, g/cc
M = 23;    // Gram atomic mass of Na, g/mol
n = N_A*1e+006/M*rho;    // Number of Na atoms per unit volume, atoms/metre-cube
// Assume a cubic structure, then 1/d^3 = n, solving for d
d = (1/n)^(1/3);    // Thickness of one layer of sodium atoms, m
N = n*d;    // Number of exposed atoms per Sq.m
R = I/(N*e);    // Rate of energy received by each atom, eV/s
t = (phi+K)/R;    // Time needed to absorb 3.36 eV energy
printf("\nThe exposure time of light to produce the photoelectron of %4.2f kinetic energy = %4.1f years", K, t/(60*60*24*365.25));

// Result
// The exposure time of light to produce the photoelectron of 1.00 kinetic energy = 14.7 years 