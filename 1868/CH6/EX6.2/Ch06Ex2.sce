// Scilab code Ex6.2: Pg 193 (2005)
clc; clear;
x0 = 1;    // For simplicity assume x0 = 1
C = 1/sqrt(x0);    // Normalization constant
P = 2*C^2*integrate('exp(-2*x/x0)', 'x', 0, x0);
printf("\nThe probability that the particle will be found in the interval -x0 <= x <= x0 is %6.4f or %4.1f percent", P, P*100);

// Result
// The probability that the particle will be found in the interval -x0 <= x <= x0 is 0.8647 