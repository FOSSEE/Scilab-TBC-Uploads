// Scilab Code Ex7.2: Page-411 (2011)
clc;clear;
c = 3e+008;....// Speed of light in vacuum, m/s
lambda = 6.5e-007;....// Wavelength of the pulse, m
t = 0.5e-009;....// Time interval between successive pulses, s
L_c = c*t;....// Coherence length of laser pulse, m
printf("\nThe coherence length of the pulse = %4.2f m", L_c);
del_nu = 1/t;....// Resultant bandwidth of laser pulse, Hz
printf("\nThe bandwidth of the laser pulse = %1.0e Hz", del_nu);
del_lambda = lambda^2*del_nu/c;....// Linewidth of laser beam, m
printf("\nThe linewidth of the pulse = %5.3f angstrom", del_lambda/1e-010);

// Result
// The coherence length of the pulse = 0.15 m
// The bandwidth of the laser pulse = 2e+009 Hz
// The linewidth of the pulse = 0.028 angstrom 