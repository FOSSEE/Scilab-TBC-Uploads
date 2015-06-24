// Scilab Code Ex13.9: Page-651 (2011)
clc;clear;
K = 2.24;....// Dielectric constant 
eps_0 = 8.85e-12;....// Electric permability in the free space, C-square/N-meter-square
rho = 1.6e+003;....// Density of CCl4, kg/meter-cube
M = 156;....// Molecular weight of CCl4
E = 1e+007;....// External electric field strength, V/m
N_A = 6.02e+26;    // Avogadro's number, per kmol
rho_M = rho*N_A/M;     // Molecular density of CCl4
p = eps_0*(K-1)*E/rho_M;    // Individual dipole moment of CCL4 molecule, C-m
printf("\nIndividual dipole moment of CCL4 molecule = %4.2e C-m ", p);

// Result
// Individual dipole moment of CCL4 molecule = 1.78e-032 C-m  
