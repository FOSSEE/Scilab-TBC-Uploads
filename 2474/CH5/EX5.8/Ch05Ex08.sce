// Scilab code Ex5.8: Pg.211 (2008)
clc; clear;
tau = 1e-08;     // Mean time for decay, s
h = 6.63e-34;     // Plank's constant, J-s
h_cross = h/(2*%pi);     // Reduced plank's constant, J-s

// Part (1)
Gamma_0 = h_cross/(1.6e-19*tau);     // Minimum uncertainity in energy, eV
printf("\nThe minimum uncertainity in energy = %3.1e eV", Gamma_0);

// Part (2)
// Since delta_E*delta_t = h*delta_f*delta_t >= h_cross, therefore , we have
delta_t = tau;    // Minimum uncertainity in time, s
delta_f = 1/(2*%pi*delta_t);     // Minimum uncertainity in frequency, Hz
printf("\nThe minimum uncertainity in frequency = %3.1e Hz", delta_f);

// Result
// The minimum uncertainity in energy = 6.6e-008 eV
// The minimum uncertainity in frequency = 1.6e+007 Hz 