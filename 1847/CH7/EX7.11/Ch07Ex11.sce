// Scilab Code Ex7.11: : Page-7.16 (2009)
clc; clear;
Pi = 1.5;  // Input power to the optical fibre, mW
Po = 0.5;  // Output power to the optical fibre, mW
L = 0.12;   // Length of the optical fibre, km
alpha_dB = 10/L*log10(Pi/Po); // Signal attenuation in optical fibre, dB/km

printf("\nThe signal attenuation in optical fibre = %4.1f dB/km", alpha_dB);

// Result 
// The signal attenuation in optical fibre = 39.8 dB/km 
