// Scilab Code Ex9.13: Page-469 (2011)
clc;clear;
C = 0.8;    // Connector loss per km, dB
F = 1.5;    // Fibre loss per km, dB
alpha = C + F;....// Attenuation of power the optical fibre, dB/km
Po = 0.3e-006;....// Output power of optical fibre, W
L = 15;....// The distance through the optical wave transmits through the fibre, km
//As the attenuation, alpha = 10/L*log(Pi/Po), solving for Pi
Pi = Po*exp(2.3026*alpha*L/10);     // Input power of optical fibre, mW
printf("\nThe minimum input power to optical fibre = %5.3f mW", Pi/1e-003);

// Result
// The minimum input power to optical fibre = 0.846 mW

