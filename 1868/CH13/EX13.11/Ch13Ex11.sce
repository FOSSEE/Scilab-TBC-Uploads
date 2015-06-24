// Scilab code Ex13.11: Pg 490 (2005)
clc; clear;
T_half = 5370*3.6e+07;  // Half life of C-14, s
lambda = 0.693/T_half;  // // Decay constant for C-14 disintegration, per sec
N_C12 = 6.02e+023/12*25;    // Number of C-12 nuclei in 25.0 g of carbon
N0_C14 = 1.3e-012*N_C12;    // Number of C-14 nuclei in 25.0 g of carbon before decay
R0 = N0_C14*3.83e-012*60;  // Initial activty of the sample, decays/min
R = 250;    // Present activity of the sample
// As R = R0*exp(-lambda*t), solving for t
t = -1/lambda*log(R/R0);    // Time during which the tree dies, s
printf("\nThe lifetime of the tree = %3.1e yr", t/(365*24*60*60));

// Result
// The lifetime of the tree = 3.6e+03 yr 
