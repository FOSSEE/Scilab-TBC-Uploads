// Scilab code Ex1.12: Pg.43 (2008)
clc; clear;
c = 3.00e+008;    // Speed of light in vacuum, m/s
lamda_o = 550e-09;    // Wavelength of yellow light, m
R = 7e+08;    // Radius of sun, m
T = 25.4*3600*24;     // Time for one revolution, s
v = 2*%pi*R/T;     // Speed of limbs, m/s
delta_f = v/lamda_o;    // Change in frequency due to Doppler's effect, Hz
f_o = c/lamda_o;    // Actual frequency of yellow light, Hz
printf("\nThe fractional change in frequency of yellow light = one part in %1.0e", delta_f/f_o);
printf("\nIt is redshift for the receding limb and a blueshift for the appriaching one.");

// Result
// The fractional change in frequency of yellow light = one part in 7e-006
// It is redshift for the receding limb and a blueshift for the appriaching one. 