// Scilab code Ex11.1: Pg.483 (2008)
clc; clear;
R0 = 1.2;     // Quantum mechanical correction, fm
A_He = 4;    // Atomic mass number of Helium
A_U = 238;    // Atomic mass number of Uranium
R_He = R0*(A_He)^(1/3);    // Nuclear radius of Helium, fm
R_U = R0*(A_U)^(1/3);    // Nuclear radius of Uranium, fm
printf("\nThe nuclear radius of He-4 = %4.2f fm", R_He);
printf("\nThe nuclear radius of U-235 = %4.2f fm", R_U);

// Result
// The nuclear radius of He-4 = 1.90 fm
// The nuclear radius of U-235 = 7.44 fm 