// Scilab code Ex8.12 Page:264 (2006)
clc; clear;
mu = 9.27e-024; // Bohr's magneton, J/T
N_up = 5;   // Number of electrons with spin up as per Hunds Rule
N_down = 1; // Number of electrons with spin down as per Hunds Rule
M = mu*(N_up-N_down);     // Net magnetic moment associated with six electrons in the 3d shell, J/T
 
printf("\nThe magnetic moment of 3d electrons of Fe using Hunds rule = %d Bohr magnetons", M/mu);

// Result 
// The magnetic moment of 3d electrons of Fe using Hunds rule = 4 Bohr magnetons 
