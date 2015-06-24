// Scilab code Ex4.6: Pg 119-120 (2008)
clc; clear;
A = 15e-04;                   // Cross-sectional area of core, metre-square
mew_r1 = 65;                  // Relative permeability of core
phi_1 = 2e-04;                // Flux, Wb
mew_r2 = 800;                 // Changed relative permeability of core
B_1 = phi_1/A;                // Flux density, T
mew_r = mew_r2/mew_r1;        // Relative permeability of core
// Since cross-sectional area of core A remains constant, therefore, we have mew_r = B_1/B_2 , solving for B_2
B_2 = mew_r*B_1;              //  New flux density, T
// Since B_2 = phi_2/A, solving for phi_2
phi_2 = B_2*A;                // New flux, Wb
printf("\nThe new flux and flux density are %5.3f mWb and %5.3f T respectively", phi_2/1e-03, B_2);

// Result
// The new flux and flux density are 2.462 mWb and 1.641 T respectively
