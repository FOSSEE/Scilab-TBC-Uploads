// Ex18_2 Page:348 (2014)
clc;clear;
t_half = 2.7*24*60*60;    // Half life of Au-198, s
lambda = 0.693/t_half;    // Decay constant of Au-198, per sec
M = 198;    // Molar mass of Au-198, g
m = 1e-006;    // Mass of Au-198 sample, g
N_A = 6.023e+023;    // Avogadro number, atoms/mol
t = 8*24*60*60;    // Age of the sample, s
N = m*N_A/M;    // Number of nuclei in the sample
A0 = lambda*N;    // Activity of Au-198, Ci
A = A0*exp(-lambda*t);    // Activity of the 8 days old sample, decays per sec
printf("\nThe decay constant of Au-198 = %4.2e per sec", lambda);
printf("\nThe activity of Au-198 = %5.3f Ci", A0/3.7e+010);
printf("\nThe activity of the 8 days old sample of Au-198 = %4.2e decays per sec", A);

// Result
// The decay constant of Au-198 = 2.97e-006 per sec
// The activity of Au-198 = 0.244 Ci
// The activity of the 8 days old sample of Au-198 = 1.16e+009 decays per sec 