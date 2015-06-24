// Scilab Code Ex12.12: Page-452 (2014)
clc; clear;
N_A = 6.023e+023;    // Avogadro's number
M = 10e+03;    // Mass of the U-235, g
M_U235 = 235;    // Molecular mass of U-235, g
t_half = 7.04e+008;    // Half life of U-235, y
N = M*N_A/M_U235;    // Number of U-235 atoms in 10 kg sample
R = log(2)*N/t_half;    // The alpha activity of 10 kg sample of U-235, decays/y
printf("\nThe alpha activity of 10 kg sample of U-235 = %3.1e Bq", R/(365.25*24*60*60));

// Result
// The alpha activity of 10 kg sample of U-235 = 8.0e+008 Bq 