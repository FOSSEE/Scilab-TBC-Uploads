// Scilab Code Ex12.10: Page-451 (2014)
clc; clear;
N_A = 6.023e+023;    // Avogadro's number
T = 138*24*3600;    // Half life of Po-210, s
R = 2000;    // Activity of Po-210, disintegrations/s
M = 0.210;    // Gram molecular mass of Po-210, kg
f = 1/3.7e+010;    // Conversion factor to convert from decays/s to Ci
A = R*f/1e-006;    // Activity of Po-210, micro-Ci
N = R*T/log(2);    // Number of radiactive nuclei of Po-210, nuclei
m = N*M/N_A;    // Mass of Po-210 sample, kg
printf("\nThe activity of Po-210 = %5.3f micro-Ci", A);
printf("\nThe mass of Po-210 sample = %3.1e kg", m);

// Result
//  The activity of Po-210 = 0.054 micro-Ci
// The mass of Po-210 sample = 1.2e-014 kg 