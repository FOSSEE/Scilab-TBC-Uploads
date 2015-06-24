// Scilab Code Ex12.6: Page-444 (2014)
clc; clear;
Z = 92;    // Atomic number of U-238
A = 238;    // Mass number of U-238
E_Coul = 0.72*Z*(Z-1)*A^(-1/3);    // Total Coulomb energy of U-238, MeV
printf("\nThe total Coulomb energy of U-238 = %3d MeV", E_Coul);

// Result
// The total Coulomb energy of U-238 = 972 MeV 