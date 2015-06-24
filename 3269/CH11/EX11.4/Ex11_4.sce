// Example 11.4
clear all;
clc;

// The results given in Example 11.2 are to be used in this problem
chi = 1.5*10^(-10);                             // Radionuclide concentration in terms of Ci/cm^3
t = 365*24*3600;                                // Time in seconds
// Using data from Table 11.3
Ebeta_bar = 0.146;                              // Average gamma decay energy per disintegration in MeV
f = 1;                                          // Experimentally detemined factor
// Calculation
H_dot = 0.229*Ebeta_bar*chi*f*t;
// Expressing the result in milli-rem
printf(" \n The external beta dose rate due to xenon exposure for a year = %.3f mrem/year \n",H_dot*10^3);
