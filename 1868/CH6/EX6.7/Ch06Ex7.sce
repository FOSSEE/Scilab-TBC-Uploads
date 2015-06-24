// Scilab code Ex6.7: Pg 205 (2005)
clc; clear;
L = 1;  // For simplicity assume length of finite square well to be unity, m
P = 2/L*integrate('sin(%pi*x/L)^2', 'x', L/4, 3*L/4); // Probability that the particle will be found in the middle half of the well
printf("\nThe probability that the particle will be found in the middle half of the well = %5.3f", P);

// Result
// The probability that the particle will be found in the middle half of the well = 0.818
