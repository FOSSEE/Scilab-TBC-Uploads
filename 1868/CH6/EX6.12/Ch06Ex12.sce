// Scilab code Ex6.12: Pg 214 (2005)
clc; clear;
P = 2/sqrt(%pi)*integrate('exp(-z^2)', 'z', 1, 100);   // Probability that the quantum oscillator in its ground state will be found in the nonclassical region
printf("\nThe probability that the quantum oscillator in its ground state will be found in the nonclassical region = %5.3f", P);

// Result
// The probability that the quantum oscillator in its ground state will be found in the nonclassical region = 0.157 
