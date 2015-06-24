// Scilab Code Ex13.12: Page-653 (2011)
clc;clear;
K_B = 1.38e-23;....// Boltzmann constant, J/mol/K
T = 300;....// Room temperature, K 
eps_0 = 8.85e-12;....// Electric permittivity of free space, F/m
N_A = 6.0e+23;    // Avogadro's number
n2 = N_A*1000;     // Number of molecules of non-polar substance in 1000 cc volume
p_0 = sqrt((9*K_B*T*eps_0*0.023)/n2);    // Dipole moment of polar molecules, C-m
printf("\nThe dipole moment of polar molecules = %5.3e C-m", p_0);

// Result
// The dipole moment of polar molecules = 3.555e-030 C-m 
