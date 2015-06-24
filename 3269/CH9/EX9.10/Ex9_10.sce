// Example 9.10
clear all;
clc;

// Given data
M = 20;                               // Mass of organ in grams

// a)
// Using the data from Table 9.15
T_12 = 8.04;                          // Radiological half life of Iodine-131 in days
T_12_b = 138;                         // Biological half life of Iodine-131 in days
lambda = 0.693/T_12;                  // Radiological decay constant of Iodine-131 in days^-1
lambda_b = 0.693/T_12_b;              // Biological decay constant of Iodine-131 in days^-1
lambda_e = lambda+lambda_b;           // Equivalent decay constant in days^-1
// Using the data from Table 9.15
zeta = 0.23;                          // Effective energy equivalent in MeV
q = 0.23;                             // The fraction of Iodine-131 that goes by inhalation
// Calculation
DCF = (51.1*zeta*q)/(M*lambda_e);
// Result
printf(" \n The dose commitment factor by inhalation = %.2f rem/ucurie \n",DCF);

// b) 
breathing_rate = 2.32*10^(-4);        // Normal breathing rate in m^3/sec
time = 2*3600;                        // Time of radiation exposure in seconds
I_conc = 2*10^(-9);                   // Iodine-131 concentration
C0 = breathing_rate*time*I_conc;      // Total intake of Iodine-131 by inhalation 
// Calculation
H = C0*(DCF*10^6);                    // Using DCF in micro-curie
// Result
printf(" \n The dose commitment to thyroid = %.2E rem = %.2f mrem \n",H,H*1000);
