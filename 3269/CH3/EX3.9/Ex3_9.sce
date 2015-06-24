// Example 3.9
clear all;
clc;

// Given data 
E0 = 0.0253;                                // Thermal energy in eV
// 1 barn = 10^(-24) cm^2
sigmay_E0 = 0.332*10^(-24);                 // Radiative capture cross section at 0.0253 eV in cm^2
E = 1;                                      // Energy in eV at which radiative cross section is to be found
// Calculation 
sigmay_E = sigmay_E0*sqrt(E0/E);
// Result
// Expressing the result in barn
printf('\n Radiative capture cross section of hydrogen at 1 eV = %5.4f b\n',sigmay_E*10^(24));
