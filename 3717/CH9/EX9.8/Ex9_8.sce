// Ex9_8  Page:194 (2014)
clc;clear;
h = 6.626e-034;    // Planck's constant, Js
B0 = 1.65;    // Magnetic field strength required to observe the NMR spectrum, T
g_N = 5.585;    // Nuclear g-factor
mu_N = 5.0508e-027;    // Nuclear magneton, J/T
nu = g_N*mu_N*B0/h;    // Operating frequency, Hz
d_nu = 510e+06;    // Frequency separation between protons in benzene and TMS, Hz
delta = d_nu/nu;    // Chemical shift in NMR spectrum, ppm
printf("\nChemical shift in NMR spectrum = %4.2f ppm", delta);

// Result
// Chemical shift in NMR spectrum = 7.26 ppm 