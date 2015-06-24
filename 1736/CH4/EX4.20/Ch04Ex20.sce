// Scilab Code Ex4.20: Page-135 (2006)
clc; clear;
rs_a0_ratio = 3.25;     // Ratio of solid radius to the lattice parameter
E_F = 50.1*(rs_a0_ratio)^(-2);  // Fermi level energy of Li, eV
T_F = 58.2e+04*(rs_a0_ratio)^(-2);  // Fermi level temperature of Li, K
V_F = 4.20e+08*(rs_a0_ratio)^(-1);  // Fermi level velocity of electron in Li, cm/sec
K_F = 3.63e+08*(rs_a0_ratio)^(-1);   
printf("\nE_F = %4.2f eV", E_F);
printf("\nT_F = %4.2e K", T_F);
printf("\nV_F = %4.2e cm/sec", V_F);
printf("\nK_F = %4.2e per cm", K_F);

// Result 
// E_F = 4.74 eV
// T_F = 5.51e+004 K
// V_F = 1.29e+008 cm/sec
// K_F = 1.12e+008 per cm 

