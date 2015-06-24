// Scilab Code Ex6.10: Page-350 (2008)
clc; clear;
g1 = 8, g2 = 10;    // Total number of cells in the first and the second compartments respectively
n1 = 3, n2 = 4;    // Given number of cells in the first and the second compartments respectively for given macrostate
W_34 = factorial(g1)/(factorial(n1)*factorial(g1 - n1))*factorial(g2)/(factorial(n2)*factorial(g2 - n2));    // Total number of microstates in the macrostate (3, 4)
printf("\nThe total number of microstates in the macrostate (%d, %d) = %d", n1, n2, W_34);

// Result
// The total number of microstates in the macrostate (3, 4) = 11760 