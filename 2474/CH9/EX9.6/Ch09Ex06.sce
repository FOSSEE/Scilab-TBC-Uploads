// Scilab code Ex9.6: Pg.384 (2008)
clc; clear;
mu = 6.86;    // Reduced mass of CO, u
f = 6.42e+13;    // Vibrational frequency of CO molecule, Hz
// Since f = (1/2*pi)*sqrt(K/mew), solving for K, we get
K = (2*%pi*f)^2*mu*1.66e-27;    // Force constant of CO, N/m
printf("\nThe effective force constant of CO = %4.2e N/m", K);

// Result
// The effective force constant of CO = 1.85e+003 N/m 