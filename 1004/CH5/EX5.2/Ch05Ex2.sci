// Scilab Code Ex5.2 Term values for L-S coupling: Pg:145 (2008)
// For 2D(3/2) state
// Set-I values of L and S
L = 1;    // Orbital quantum number
S = 1/2;    // Spin quantum number
printf("\nThe term values for L = %d and S = %2.1f (P-state) are:\n",L, S);
J1 = 3/2;    // Total quantum number
printf("%dP(%2.1f)\t", 2*S+1,J1);
J2 = 1/2;    // Total quantum number
printf("%dP(%2.1f)", 2*S+1,J2);

// Set-II values of L and S
L = 2;    // Orbital quantum number
S = 1/2;    // Spin quantum number
printf("\nThe term values for L = %d and S = %2.1f (P-state) are:\n",L, S);
J1 = 5/2;    // Total quantum number
printf("%dD(%2.1f)\t", 2*S+1,J1);
J2 = 3/2;    // Total quantum number
printf("%dD(%2.1f)", 2*S+1,J2);

// Result 
// The term values for L = 1 and S = 0.5 (P-state) are:
// 2P(1.5)	2P(0.5)
// The term values for L = 2 and S = 0.5 (P-state) are:
// 2D(2.5)	2D(1.5) 