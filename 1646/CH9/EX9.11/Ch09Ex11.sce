// Scilab Code Ex9.11: Page-468 (2011)
clc;clear;
alpha = 3.5;....// Attenuation of the optical fibre, dB/km
Pi = 0.5;....// Input power of optical fibre, mW
L = 4;....    // Distance through the optical wave transmits through the fibre, km
// As alpha = 10/L*log10(Pi/Po), solving for Po
Po = Pi/exp(alpha*L*2.3026/10); // Output power of optical fibre, mW
printf("\nThe output power of optical fibre = %4.1f micro-watt", Po/1e-003);

// Result
// The output power of optical fibre = 19.9 micro-watt 
