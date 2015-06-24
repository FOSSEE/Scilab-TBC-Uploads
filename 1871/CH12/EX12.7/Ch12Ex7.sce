// Scilab code Ex12.7: Pg:473 (2008)
clc;clear;
Pi = 1;    // Initial Power level of optical fibre, mW
Po = 0.85;    // Output Power level of optical fibre, mW
L = 0.5;    // Lenght of optical fibre, km
alpha = (10/L)*log10(Pi/Po);    // Attenuation of optical signal, dB/km
printf("\nThe attenuation of optical signal = %4.2f dB/km", alpha);

// Result 
// The attenuation of optical signal = 1.41 dB/km 