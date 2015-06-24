// Scilab Code Ex13.1: Page-479(2014)
clc; clear;
N_A = 6.02e+023;    // Avogadro's number
e = 1.6e-019;    // Charge on an electron, C
q = 2*e;    // Charge on the alpha particle, C
rho = 1.9;    // Density of carbon target, atoms/cc
N_M = 1;    // Number of atoms per molecule
M_g = 12;    // Gram atomic mass of C12 isotope, g/mol
sigma = 25e-031;    // Total cross section for the reaction, Sq.m
t = 1e-006;    // Thickness of carbon target, m
I_beam = 1e-006;    // Beam current of akpha particle, ampere
time = 3600;    // Time for which the alpha particle beam is incident on the target, s
n = rho*N_A*N_M/M_g;    // Number of nuclei per unit volume, per cc
P = n*t*sigma*1e+006;     // Probability of scattering of alpha particles
N_I = I_beam*time/q;    // Number of incident alpha particles
N_n = N_I*P;    // Number of neutrons produced in the reaction
printf("\nThe number of neutrons produced in the reaction = %3.1e neutrons", N_n);

// Result
// The number of neutrons produced in the reaction = 2.7e+009 neutrons 