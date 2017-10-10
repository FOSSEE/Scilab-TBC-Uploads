// Ex9_7  Page:193 (2014)
clc;clear;
h = 6.626e-034;    // Planck's constant, Js
nu = 120e+06;    // Operating frequency, Hz
g_N = 5.585;    // Nuclear g-factor
mu_N = 5.0508e-027;    // Nuclear magneton, J/T
B0 = h*nu/(g_N*mu_N);    // Magnetic field strength required to observe the NMR spectrum, T
printf("\nThe magnetic field strength required to observe the NMR spectrum = %5.3f T", B0);

// Result
// The magnetic field strength required to observe the NMR spectrum = 2.819 T 