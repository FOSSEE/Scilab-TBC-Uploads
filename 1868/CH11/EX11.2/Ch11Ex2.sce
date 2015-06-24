// Scilab code Ex11.2: Pg 383 (2005)
clc; clear;

// Part (a)
f = 6.42e+13;   // Frequency of absorption, Hz
omega = 2*(%pi)*f;   // Angular frequency of absorbed radiations, Hz
mu = 1.14e-26;    // Reduced mass of CO molecule, kg
K = mu*(omega^2);    // Effective force constant of CO molecule, N/m
printf("\nThe effective force constant of CO molecule = %4.2e N/m", K);

// Part (b)
h_cross = 1.055e-34;   // Reduced Planck's constant, J-s
A = sqrt(h_cross/(mu*omega));   // Amplitude of vibrations, m
printf("\nThe amplitude of vibrations = %7.5f nm", A/1e-09);

// Result
// The effective force constant of CO molecule = 1.85e+003 N/m
// The amplitude of vibrations = 0.00479 nm 