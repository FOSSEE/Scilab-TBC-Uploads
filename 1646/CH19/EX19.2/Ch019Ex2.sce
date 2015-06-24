// Scilab Code Ex19.2: Page-959 (2011)
clc; clear;
T_c1 = 4.153;    // Critical temperature of mercury for its one isotope, K
M1 = 200.59;    // Mass of first isotope of mercury, amu
M2 = 204;       // Mass of second isotope of mercury, amu  
// From isotopic effect of superconductivity,
// T_c2/T_c1 = sqrt(M1/M2), solving for T_c2
T_c2 = T_c1*sqrt(M1/M2);    // Critical temperature of mercury for second isotope, K
printf("\nThe critical temperature of mercury for its isotope of mass 204 amu = %5.3f K", T_c2);

// Result 
// The critical temperature of mercury for its isotope of mass 204 amu = 4.118 K 
