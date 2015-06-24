// Scilab Code Ex4.18a: Page-144 (2006)
clc; clear;
// For Cu
rs_a0_ratio = 2.67;     // Ratio of solid radius to the lattice parameter
E_F = 50.1*(rs_a0_ratio)^(-2);  // Fermi level energy of Cu, eV
T_F = 58.2e+04*(rs_a0_ratio)^(-2);  // Fermi level temperature of Cu, K
V_F = 4.20e+08*(rs_a0_ratio)^(-1);  // Fermi level velocity of electron in Cu, cm/sec
K_F = 3.63e+08*(rs_a0_ratio)^(-1);   
printf("\nFor Cu :");
printf("\n========");
printf("\nE_F = %6.4f eV", E_F);
printf("\nT_F = %5.3e K", T_F);
printf("\nV_F = %7.5e cm/sec", V_F);
printf("\nK_F = %6.4e per cm", K_F);
rs_a0_ratio = 3.07;     // Ratio of solid radius to the lattice parameter
E_F = 50.1*(rs_a0_ratio)^(-2);  // Fermi level energy of Nb, eV
T_F = 58.2e+04*(rs_a0_ratio)^(-2);  // Fermi level temperature of Nb, K
V_F = 4.20e+08*(rs_a0_ratio)^(-1);  // Fermi level velocity of electron in Nb, cm/sec
K_F = 3.63e+08*(rs_a0_ratio)^(-1);   
printf("\n\nFor Nb:");
printf("\n========");
printf("\nE_F = %6.4f eV", E_F);
printf("\nT_F = %5.3e K", T_F);
printf("\nV_F = %6.4e cm/sec", V_F);
printf("\nK_F = %6.4e per cm", K_F);

// Result
// For Cu :
// ========
// E_F = 7.0277 eV
// T_F = 8.164e+004 K
// V_F = 1.57303e+008 cm/sec
// K_F = 1.3596e+008 per cm
//
// For Nb:
// ========
// E_F = 5.3157 eV
// T_F = 6.175e+004 K
// V_F = 1.3681e+008 cm/sec
// K_F = 1.1824e+008 per cm 
