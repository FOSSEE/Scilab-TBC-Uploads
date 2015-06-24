// Example 11.2
clear all;
clc;

// Given data
A = 2*10^3;                                 // Amount of radioactivity release due to Xenon-133 in curie
t = 365*24*3600;                            // Time in seconds
Q_dash = A/t;                               // Average emission rate of Xenon-133
h = 100;                                    // Location of radioactivity release through vent
v_bar = 1;                                  // Wind speed in m/sec
// Using the plot given in Figure 11.11 and 11.12 for Type F condition at 100 m
sigma_y = 275;                              // Horizontal dispersion coefficient
sigma_z = 46;                               // Vertical dispersion coefficient
chi = (Q_dash*exp(-h^2/(2*sigma_z^2)))/(%pi*v_bar*sigma_y*sigma_z);     // Radionuclide concentration in terms of Ci/cm^3
// Using data from Table 11.3
Eg_bar = 0.03;                              // Average gamma decay energy per disintegration in MeV
// Calculation 
H_dot = 0.262*chi*Eg_bar*t*10^3;            // The units are in mrem/year
// Expressing the dose rate in SI units
H_dot_SI = 2.62*chi*Eg_bar*t*10^3;
// Result
printf(" \n The external gamma dose rate due to xenon release under type F condition = %.4f mrem/year or %.3f mSv/year \n",H_dot,H_dot_SI);
