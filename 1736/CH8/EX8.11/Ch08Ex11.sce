// Scilab code Ex8.11 Page:264 (2006)
clc; clear;
S = 2;  // Spin quantum number
J = 0;  // Total quantum number
L = 2;  // Orbital quantum number
g = 2;  // Lande splitting factor
printf("\nThe spectroscopic term value of Mn3+ ion = %d_D_%d", 2*S+1, J);
// For J = L - S
J = L - S;
mu_N = g*sqrt(J*(J+1)); // Effective magneton number
printf("\nThe effective magneton number for J = L - S is %d", mu_N);
// For J = S, L = 0 so that
L = 0;
J = L+S;
mu_N = g*sqrt(J*(J+1)); // Effective magneton number
printf("\nThe effective magneton number for J = S is %3.1f.\nIt is in agreement with the experimental value of 5.0.", mu_N);

// Result 
// The spectroscopic term value of Mn3+ ion = 5_D_0
// The effective magneton number for J = L - S is 0
// The effective magneton number for J = S is 4.9.
// It is in agreement with the experimental value of 5.0. 
