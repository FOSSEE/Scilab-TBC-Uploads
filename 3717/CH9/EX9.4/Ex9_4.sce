// Ex9_4 Page:175 (2014)
clc;clear;
PI = 3.14;
u = 1.67e-027;    // Mass equivalent of 1 amu, kg/amu
c = 3e+008;    // Speed of light in vacuum, m/s
lambda0 = 3.465e-006;    // Wavelength of vibrational absorption line of HCl molecule, m
m1 = 1.0087;    // Mass of H atom, amu
m2 = 35.453;    // Mass of Cl atom, amu
mu = m1*m2/(m1 + m2)*u;    // Reduced mass of HCl molecule, kg
k = 4*PI^2*mu*(c/lambda0)^2;    // Force constant of H-Cl bond, N/m
printf("\nForce constant of the H-Cl bond = %5.1f N/m", k);

// Result
// Force constant of the H-Cl bond = 484.2 N/m
