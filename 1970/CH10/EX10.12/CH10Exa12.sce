// Scilab code Exa10.12 : : Page-458 (2011)
clc; clear;
sigma = 2.8e-024;        // Cross section, metre square
lambda = 2.4e-11;        // de Broglie wavelength, metre
R_prob = %pi*sigma/lambda^2;        // Relative probabilities of (n,n) and (n,y) in indium
printf("\nThe relative probabilities of (n,n) and (n,y) in indium = %5.3f", R_prob);

// Result
// The relative probabilities of (n,n) and (n,y) in indium = 0.015 
 
