// Example 11.7
clear all;
clc;

// Given data
C0 = 6.25*10^6;                              // Amount of initial radioactivity release due to I-131 in curie
p = 0.1;                                    // Leakage rate in percent
t0 = 2*3600;                                // Analysis time in seconds
v_bar = 1;                                  // Wind speed in m/sec

// 1.
lambdal = 0.01*p/86400;                     // Decay constant corresponding to leakage rate in seconds (1 day = 86400 seconds)
// Using the data from Example 11.5 for the half life of Iodine-131
T_12 = 8.04;                                // Half life of Iodine 131 in days
lambdac = 0.693/(T_12*86400);               // Decay constant of Iodine-131 (I-131) in seconds
// Using data from Table 11.3
Eg_bar = 0.371;                             // Average gamma decay energy per disintegration of I-131 in MeV
// Using the plot given in Figure 11.11 and 11.12 for Type F condition at 100 m
sigma_y = 21;                               // Horizontal dispersion coefficient
sigma_z = 70;                               // Vertical dispersion coefficient
// As lambdac*t << 1, 
// Calculation
H = (0.262*Eg_bar*lambdal*C0*t0)/(%pi*v_bar*sigma_y*sigma_z);
// Result
printf(" \n The total external dose due to gamma ray exposure = %.2E rem\n",H)

// 2.
// Using the data given in Example 11.5
B = 2.32*10^(-4);                           // Normal breathing rate in m^3/sec
zeta = 0.23;                                // Fraction of core inventory in MeV 
q = 0.23;                                   // Fraction of Iodine-131 in thyroid
M = 20;                                     // Mass of an adult thyroid in grams
// Calculation
H_dot = (592*B*zeta*q*lambdal*C0*t0)/(%pi*v_bar*sigma_y*sigma_z*M);
// Converting the units from rem/sec to milli-rem/hour by multiplying by (1000*3600)
// Result
printf(" \n The dose rate to an adult thyroid after 2 hours = %.2E rem/sec or %d mrem/hour\n",H_dot,ceil(H_dot*(1000*3600)));

// 3.
// Using the data given in Example 11.5
T_12 = 8.04;                                // Half life of Iodine 131 in days
T_12b = 138;                                // Biological half life of Iodine 131 in days
lambda = 0.693/(T_12*86400);                // Decay constant of Iodine-131 in sec^(-1)
lambda_b = 0.693/(T_12b*86400);             // Biological decay constant of Iodine-131 in sec^(-1)
// Calculation
H = H_dot/(lambda+lambda_b);
// Result
printf(" \n The dose commitment to thyroid by Iodine-131 exposure after 2 hours = %.2f rem \n",H);
