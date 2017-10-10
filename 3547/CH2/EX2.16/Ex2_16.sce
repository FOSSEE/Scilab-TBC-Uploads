// Example No. 2.16
// To find the length of DCF so that the pulse width (FWHM) at the output of the DCF is twice the pulse width at the input of the TF
// Page No. 84

clc;
clear;

// Given data
beta2TF=-21*(10^(-12))^2;                                    // Dispersion coefficient of transmission fiber in s^2/km
beta2DCF=130*(10^(-12))^2;                                   // Dispersion coefficient of dispersion compensating fiber in s^2/km
LTF=80;                                                  // Length of transmission fiber in km
TFWHM=12.5*10^(-12);                                     // Full-width at half-maximum
T0=TFWHM/1.665;                                          // Half-width

// The length of required DCF
LDCF1=(sqrt(3)*T0^2-beta2TF*LTF)/beta2DCF;                // Length of dispersion compensating fiber in km
LDCF2=(-sqrt(3)*T0^2-beta2TF*LTF)/beta2DCF;               // Length of dispersion compensating fiber in km

// Displaying the result in command window
printf('\n The length of DCF so that the pulse width (FWHM) at the output of the DCF is twice the pulse width at the input of the TF = %0.2f km',LDCF1);
printf(' or = %0.2f km',LDCF2);
