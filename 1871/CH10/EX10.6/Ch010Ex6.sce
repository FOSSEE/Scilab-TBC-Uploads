// Scilab code Ex10.6: Pg:422 (2008)
clc;clear;
eps_r_prime = 1;    // For simplicity assume real part of dielectric constant to be unity
eps_r_dprime = eps_r_prime;    // Imaginary part of dielectric constant is the same as that of real part
tau = 18e-06;    // Relaxation time of ice, s
f = 1/(2*%pi*tau*1e+003);    // Frequency when the real and imaginary parts of the complex dielectric constant will become equal, kHz
delta = atand(eps_r_dprime/eps_r_prime);    // Loss angle, degree
phi = 90 - delta;    // Phase difference between the current and voltage, degree
printf("\nThe frequency when the real and imaginary parts of the complex dielectric constant will become equal = %3.1f kHz", f);
printf("\nThe phase difference between the current and voltage = %2.0f degree", phi);

// Result 
// The frequency when the real and imaginary parts of the complex dielectric constant will become equal = 8.8 kHz
// The phase difference between the current and voltage = 45 degree