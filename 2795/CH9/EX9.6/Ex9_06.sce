// Scilab Code Ex9.6: Page-315 (2014)
clc; clear;
k = 1.38e-023;    // Boltzmann constant, J/K
T = [293 5000 1e+006];    // Room temperature, temperature at the surface of the star and temperature at the star interior respectively, K
e = 1.6e-019;    // Energy equivalent of 1 eV, J
g_E1 = 2;    // Possible configuration of the electrons in ground state of H-atom
g_E2 = 8;    // Possible configuration of the electrons in the first excited state of H-atom
E1 = -13.6;    // Energy of the ground state, eV
E2 = -3.4;    // Energy of the first excited state state, eV
n_ratio = zeros(3);
for i = 1:1:3
    n_ratio(i) = g_E2/g_E1*exp(1/(k*T(i))*(E1 - E2)*e);
    printf("\nFor T = %4.2e K, n_E2/n_E1 = %4.2e", T(i), n_ratio(i));
end


// Result
// For T = 2.93e+002 K, n_E2/n_E1 = 2.05e-175
// For T = 5.00e+003 K, n_E2/n_E1 = 2.14e-010
// For T = 1.00e+006 K, n_E2/n_E1 = 3.55e+000 