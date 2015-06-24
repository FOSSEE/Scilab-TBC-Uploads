// Scilab code Ex12.6: Pg:473 (2008)
clc;clear;
alpha = 3.5;    // Attenuation of optical signal, dB/km
Pi = 0.5e-003;    // Initial Power level of optical fibre, mW
L = 4;    // Lenght of optical fibre, km
// As alpha = (10/L)*log(Pi/Po), solving for Po
Po = Pi/10^(alpha*L/10);    // Output power level of optical fibre, micro-W
printf("\nThe output power level in optical fiber = %4.1f micro-W", Po/1e-006);

// Result 
// The output power level in optical fiber = 19.9 micro-W