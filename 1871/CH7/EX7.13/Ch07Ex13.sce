// Scilab code Ex7.13: Pg:308 (2008)
clc;clear;
P = 2/1.6e-013;    // Power to be produced, MeV/sec
E_bar = 200;    // Energy released per fission, MeV
n = P/E_bar;    // Required number of fissions per second
// Since the number of atoms in 235gm of Uranium is 6.02e+023
N = (6.02e+023/235)*500;    // Number of atoms in 500 gm of U-235
E = E_bar*N;    // Total energy released in the complete fission of 500gm of uranium 235, MeV
printf("\nThe total energy released in the complete fission of 500gm of uranium 235 = %4.2e MeV", E);

// Result 
// The total energy released in the complete fission of 500gm of uranium 235 = 2.56e+026 MeV 