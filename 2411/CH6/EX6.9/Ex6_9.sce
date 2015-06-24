// Scilab Code Ex6.9: Page-350 (2008)
clc; clear;
g1 = 6, g2 = 8;    // Total number of cells in the first and the second compartments respectively
n1 = 2, n2 = 3;    // Given number of cells in the first and the second compartments respectively for given macrostate
W_23 = factorial(g1)/(factorial(n1)*factorial(g1 - n1))*factorial(g2)/(factorial(n2)*factorial(g2 - n2));    // Total number of microstates in the macrostate (2, 3)
printf("\nThe total number of microstates in the macrostate (%d, %d) = %d", n1, n2, W_23);

// Result
// The total number of microstates in the macrostate (2, 3) = 840 