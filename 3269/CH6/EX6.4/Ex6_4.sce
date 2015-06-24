// Example 6.4
clear all;
clc;

// Using the result from Example 6.3
R_c = 48.5;                     // Critical Radius for an extrapolated boundary in cm
L2 = 384;                      // Diffusion area in cm^2
// Calculation
P_L = 1/(1+((%pi/R_c)^2*L2));
// Result
printf('\n Nonleakage probability of a fission neutron = %3.2f \n',P_L);
