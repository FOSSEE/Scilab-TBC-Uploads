// Scilab Code Ex19.6: Page-962 (2011)
clc; clear;
T_c = 7.2;    // Critical temperature of lead in superconducting state, K
T = 5;        // Temperature at which lead loses its superconducting state, K
H_cT = 3.3e+004;    // Critical magnetic field for superconducting lead at 5 K, A/m
// As H_cT = H_c0*(1-(T/T_c)^2), solving for H_c0
H_c0 = H_cT/(1-(T/T_c)^2);    // Critical field for lead at 0 K, A/m 
printf("\nThe critical magnetic field for lead at 0 K = %4.2e A/m", H_c0);

// Result 
// The critical magnetic field for lead at 0 K = 6.37e+004 A/m 
