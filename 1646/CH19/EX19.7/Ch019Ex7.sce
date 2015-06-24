// Scilab Code Ex19.7: Page-962 (2011)
clc; clear;
H_c0 = 2e+005;    // Critical field for niobium at 0 K, A/m 
H_cT = 1e+005;    // Critical magnetic field for superconducting niobium at 5 K, A/m
T = 8;        // Temperature at which lead loses its superconducting state, K
// As H_cT = H_c0*(1-(T/T_c)^2), solving for T_c
T_c = T/(1-H_cT/H_c0)^(1/2);
printf("\nThe critical temperature for niobium = %6.3f K", T_c);

// Result 
// The critical temperature for niobium = 11.314 K 
