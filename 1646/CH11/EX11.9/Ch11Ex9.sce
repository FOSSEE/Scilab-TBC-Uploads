// Scilab Code Ex11.9: Page-566 (2011)
clc;clear;
S = 2*4.186/60*1e+04;....// Solar constant, J/s/metre-square
// From the poynting vector S = E*H 
C = 377;....// Wave Impedence, ohm
E = sqrt(S*C);      // Electric field of radiation, V/m
H = E/C;            // Magnetic field of radiation, A/m
E0 = E*sqrt(2);     // Amplitude of electric field of radiation, V/m 
H0 = H*sqrt(2);     // Amplitude of magnetic field of radiation, A/m
printf("\nThe amplitude of electric field of radiation = %6.1f V/m", E0); 
printf("\nThe amplitude of magnetic field of radiation = %5.3f V/m", H0); 


// Result
// The amplitude of electric field of radiation = 1025.7 V/m
// The amplitude of magnetic field of radiation = 2.721 V/m 
