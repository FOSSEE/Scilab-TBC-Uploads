// Example 5.6
clear all;
clc;

// Given data
S = 10^7;             // Strength of neutron source in neutrons/sec
r = 15;               // Distance over which neutron flux is to be calculated in cm
// Using the data given in Table 5.2,
L_T = 2.85;           // Thermal diffusion length in cm
D_bar = 0.16;         // Diffusion coefficient in cm
// Calculation
phi_T = S*exp(-r/L_T)/(4*%pi*D_bar*r);
// Result
printf('\n Neutron flux = %3.2E neutrons/cm^2-sec \n',phi_T);
