// Example 3.2
clear all;
clc;

// Given data
sigmaf = 582;           // Fission cross section of U-235 on bombardment of neutron in barn
sigmay = 99;            // Radiative capture cross section of U-235 on bombardment of neutron in barn
// Calculation
pf = sigmaf/(sigmaf+sigmay);
// Result
printf('\n Probability of fission = %.3f = %3.1f percent\n',pf,pf*100);
