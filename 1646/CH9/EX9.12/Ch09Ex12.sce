// Scilab Code Ex9.12: Page-468 (2011)
clc;clear;
Pi =1;....// Input power of optical fibre, mW
Po = 0.85;....// Outptu power of optical fibre, mW
L = 0.5;....//The distance through the optical wave transmits through the fibre, km 
alpha = (10/L)*log10(Pi/Po);      // The attenuation of power through the optical fibre
printf("\nThe attenuation of power through the optical fibre = %5.3f dB/km", alpha);

// Result
// The attenuation of power through the optical fibre = 1.412 dB/km 
