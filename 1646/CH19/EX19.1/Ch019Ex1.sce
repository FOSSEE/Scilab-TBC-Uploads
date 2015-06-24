// Scilab Code Ex19.1: Page-959 (2011)
clc; clear;
T_c = 6.2;    // Critical temperature of lead in superconducting state, K
T = 4;        // Temperature at which critical field of lead is to be found out, K
H_c0 = 0.064;    // Critical field for lead at 0 K, MA/m
H_cT = H_c0*(1-(T/T_c)^2);    // Critical field for lead at 4 K, MA/m
printf("\nThe critical field for lead at 4 K = %5.3f MA/m", H_cT);
// Result 
// The critical field for lead at 4 K = 0.037 MA/m 
