// Scilab code Exa2.4 : : Page 89 (2011)
clc; clear;
T = 5568;    // Half life of the C-14,years
lambda = 0.693/T; // Disintegration constant, years^-1.
N_0 = 15.6/lambda; // Activity of fresh carbon, dpm .gm
N = 3.9/lambda; // Activity of an ancient wooden boat,dpm.gm.
t = 1/(lambda)*log(N_0/N); // Age of the boat, years
printf("\nThe age of the boat : %5.3e years", t);

// Result
// The age of the boat : 1.114e+004 years