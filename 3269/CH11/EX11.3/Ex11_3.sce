// Example 11.3
clear all;
clc;

// Using data from Table 11.3
Eg_bar = 0.00211;                            // Average gamma decay energy per disintegration in MeV
// Calculation
C_y = 0.262*Eg_bar;
// Result
printf(" \n The dose rate factor due to krypton exposure = %.2E rem*m^3/sec-Ci \n",C_y);
