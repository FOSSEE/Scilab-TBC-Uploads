// Scilab code Ex14.5: Pg 513 (2005)
clc; clear;
A_Ba = 141;     // Mass number of Barium
A_Kr = 92;    // Mass number of Barium
r_0 = 1.2e-15;    // Separation constant, m
r_Ba = r_0*A_Ba^(1/3);   // Nuclear radius of Barium, m 
r_Kr = r_0*A_Kr^(1/3);   // Nuclear radius of Krypton, m
r = r_Ba + r_Kr;   // Separation between two atoms, m
Z_1 = 56;     // Atomic number of Barium
Z_2 = 36;   // Atomic number of Barium
k = 1.440e-09;   // Coulomb constant, eV-m
U = k*Z_1*Z_2/r                // Coulomb Potential energy of two charges, MeV
printf("\nThe Coulomb potential energy for two charges = %3d MeV" , U/1e+06);
printf("\nThis shows that the fission mechanism is plausible");

// Result
// The Coulomb potential energy for two charges = 248 MeV
// This shows that the fission mechanism is plausible 