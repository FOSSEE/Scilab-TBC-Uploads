// Example 9.9
clear all;
clc;

// Given data
fluence = 10^8;                               // Given fluence neutrons/cm^2
// From Figure 9.12
// To receive an dose equivalent rate of 1 mrem/hr, the fast neutron flux is 7 neutrons/cm^2-sec
phi_eq = 7;                                  // Equivalent flux in neutrons/cm^2-sec
D_eq = 1;                                    // Equivalent dose rate in mrem/hr
// 1 hour = 3600 seconds
fluence_eq = phi_eq*3600;                    // Equivalent fluence in neutrons/cm^2
// Calculation 
D = (fluence*D_eq)/fluence_eq;
// Result
printf(" \n Dose received due to exposure of accelerator source = %d mrem \n",D);
// The answer given in textbook is approximated to a nearest value.
