// Scilab code Ex9.10 Page:287 (2006)
clc; clear;
alpha = 0.5;    // Isotopic exponent of Osmium
T_c = 0.655;    // Transition temperature of Osmium, K 
M = 190.2;    // Mass of Osmium, amu
K = T_c*M^alpha;    // K is the constant of proportionality

printf("\nThe value of constant of proportionality = %4.2f ", K);

// Result 
// The value of constant of proportionality = 9.03
