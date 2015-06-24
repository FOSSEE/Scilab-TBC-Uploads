// Example 9.6
clear all;
clc;

// Given data
E =2 ;                                        // Energy of gamma radiation in MeV
X_dot = 1;                                    // Exposure rate in mR/hour
// Using the data from Table II.5
// Let mu_a/rho of air at 2 Mev be denoted as mu_rho
mu_rho = 0.0238;                              // Ratio of absorption coefficient to sensity of air in cm^2/g
// Calculation
I = X_dot/(E*mu_rho*0.0659);
printf(" \n The beam intensity of gamma radiation required = %d gamma rays/cm^2-sec \n",ceil(I));
