// Scilab Code Ex9.3 Page:278 (2006)
clc;clear;
T_1 = 14;    // Temperature, K
T_2 = 13;    // Temperature, K
H_c1 = 1.4e+05;    // Critical field at T_1, K
H_c2 = 4.2e+05;    // Critical field at T_2, K//As H_c1/H_c2 = (T_c^2-T_1^2)/(T_c^2-T_2^2), solving for T_c
T_c = sqrt((H_c2/H_c1*T_1^2 - T_2^2)/2);  // The superconducting transition temperature of a specimen, K
printf("\nTransition temperature of a specimen = %5.2f K", T_c);

// Result 
// Transition temperature of a specimen = 14.47 K 
