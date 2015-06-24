// Example1_14_pg31.sce
// To find the per unit regulation
// Theory of Alternating Current Machinery by Alexander Langsdorf
// First Edition 1999, Thirty Second reprint
// Tata McGraw Hill Publishing Company
// Example in Page 31


clear; clc; close;

// Given data
r_pu = 0.017; // Per-unit resistance
x_pu = 0.0247; // Per-unit reactance
power_factor = 1; // Unity Power Factor
overload = 0.25; // 25% overload

// Calculations
phi = acos(power_factor); 
OL_factor = 1.00 + overload;
r_pu = r_pu*OL_factor; // Base value has to be changed for 0.25 overload
x_pu = x_pu*OL_factor; // Base value has to be changed for 0.25 overload
// Formula for regulation is, Per-unit-regulation = r_pu*cos(phi) + x_pu*sin(phi) + 0.5*(x_pu*cos(phi) - r_pu*sin(phi))^2
perunit_regulation = r_pu*cos(phi) + x_pu*sin(phi) + 0.5*(x_pu*cos(phi) - r_pu*sin(phi))^2;

// disp('Hence,');
printf("Per-unit regulation = %0.4f",perunit_regulation);

// Result
// Per-unit regulation = 0.0217
