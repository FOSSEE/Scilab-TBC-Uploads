// Scilab code Ex10.5: Pg:419 (2008)
clc;clear;
n = 1.5;    // Refractive index of glass
E = 1;    // For simplicity assume electric field strength to be unity, N/C
epsilon_0 = 8.85e-012;    // Permittivity of free space, farad per metre
epsilon_r = 6.75;    // Relative permittivity of free space at optical frequencies
mu = 1.5;    // Refractive index for glass
P_e = epsilon_0*(n^2 - 1)*E;        // Electronic polarizability, farad Sq.m
P_i = epsilon_0*(epsilon_r - n^2)*E;    // Ionic polarizability, farad Sq.m
percent_P_i = P_i/(P_e+P_i)*100;    // Percentage ionic polarizability
printf("\nPercent ionic polarizability for glass = %3.1f percent", percent_P_i);

// Result 
// Percent ionic polarizability for glass = 78.3 percent  