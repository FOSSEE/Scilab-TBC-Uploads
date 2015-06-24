// Scilab code Ex10.2: Pg:411 (2008)
clc;clear;
N = 2.7e+025;    // Number of molecules per unit volume
epsilon_r = 1.0024;    // Dielectric constant due to electronic polarization
epsilon_0 = 8.85e-012;    // Permittivity of free space, force per meter
// P = epsilon_0*(epsilon_r-1)*E and P = N*alpha_e*E, solving for alpha_e 
alpha_e = epsilon_0*(epsilon_r-1)/N;    // Electronic polarizability of an argon atom, farad Sq.m
printf("\nThe electronic polarizability of an argon atom = %3.1e farad Sq.m", alpha_e);

// Result 
// The electronic polarizability of an argon atom = 7.9e-040 farad Sq.m  