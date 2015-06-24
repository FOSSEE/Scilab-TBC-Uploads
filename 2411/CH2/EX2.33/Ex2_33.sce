// Scilab Code Ex2.33: Page-93 (2008)
clc; clear;
E = [2 3 4];    // Coefficients of i, j and k in the electric field, N/C
S = [10; 0; 0];    // Coefficients of i, j and k in the area vector, Sq. m
phi_E = E*S;    // Electric flux through the surface, N-Sq.m/C
printf("\nThe electric flux through the surface in YZ plane = %d N-Sq.m/C", phi_E);

// Result 
// The electric flux through the surface in YZ plane = 20 N-Sq.m/C