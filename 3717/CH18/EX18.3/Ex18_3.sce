// Ex18_3 Page:348 (2014)
clc;clear;
N_A = 6.02e+023;    // Avogadro number, atoms/mol
M = 14;    // Gram atomic mass of C-14, g
t_half = 5570*365*24*60*60;    // Half life of C-14, s
lambda = 0.693/t_half;    // Decay constant of Au-198, per sec
A = 2e-003*3.7e+010;    // Activity of C-14, decays per sec
N = 1/lambda*A;    // The number of nuclei in the C-14 sample
m = N*M/N_A;    // Mass of N atoms of C-14, g
printf("\nThe mass of 2 mCi of radioactive C-14 = %4.2e g", m);

// Result
// The mass of 2 mCi of radioactive C-14 = 4.36e-004 g 