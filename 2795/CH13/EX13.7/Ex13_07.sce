
// Scilab Code Ex13.7: Page-490(2014)
clc; clear;
t = 30e-003;    // Time during which the number of fissions is to be calculated, s
E = 185;    // Energy produced for each fission, MeV
delta_t = 5e-006;    // Average time during which a neutron is captured, s
fs = t/delta_t;    // Number of fission cycles within 30 ms
N = (1.01)^fs;    // Number of fissions that occur in 30 ms
E_total = N*E;    // Total energy produced in 30 ms, MeV
printf("\nThe total number of fissions that occur in %d ms = %3.1e", t/1e-003, N);
printf("\nThe total energy produced = %3.1e MeV", E_total);

// Result
// The total number of fissions that occur in 30 ms = 8.5e+025
// The total energy produced = 1.6e+028 MeV 
// The answers are given wrong in the textbook