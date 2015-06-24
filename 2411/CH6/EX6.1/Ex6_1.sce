// Scilab Code Ex6.1: Page-345 (2008)
clc; clear;
n = 14;    // Total number of particles
C = 2;    // Total number of compartments
N_micro = C^n;    // Total number of microstates
n1 = [10 7 14];    // Set of number of particles in first compartment
n2 = [4 7 0];    // Set of number of particles in second compartment
for i = 1:1:3
    W = factorial(n1(i) + n2(i))/(factorial(n1(i))*factorial(n2(i)));
    P = W/N_micro;
    printf("\nThe probability of microstate (%d, %d) = %8.6f", n1(i), n2(i), P);
end

// Result
// The probability of microstate (10, 4) = 0.061096
// The probability of microstate (7, 7) = 0.209473
// The probability of microstate (14, 0) = 0.000061 