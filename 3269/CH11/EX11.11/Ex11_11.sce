// Example 11.11
clear all;
clc;

// Given data
Qy_bar = 1.04*10^(-2);                      // Emission rate for one year in curie/year
// Let (chi/Q_bar) = d which is called 'Dilution factor'
d = 4*10^(-8);                              // Dilution factor in year/cm^3
vd = 0.01;                                  // Experimentally determined constant

// 1.
T_12 = 8.04;                                // Half life of Iodine 131 in days
T_12f = 14;                                 // First order half life of Iodine 131 in days
// Converting days into years by using 1 year = 365 days
lambda = 0.693/(T_12/365);                  // Decay constant of Iodine-131
lambdaf = 0.693/(T_12f/365);                // First order decay constant of Iodine-131
// Calculation
Cf = (Qy_bar*d*vd)/(lambda+lambdaf);
// Expressing the result in micro-curie 
Cf = Cf*10^6;
// Result
printf(" \n The activity of I-131 on the vegetation = %.2E micro-curie/m^2 \n",Cf);

// 2.
// The proportionality factor has a value 9*10^(-5) Ci/cm^3 of milk per Ci/m^2 of grass
// Calculation 
Cm = 9*10^(-5)*Cf;
// Result
printf(" \n The concentration of I-131 in the milk = %.2E micro-curie/m^2 \n",Cm);

// 3.
MPC = 3*10^(-7);                            // Maximum Permissible Concentration in micro-curie/cm^3
// Calculation
H_dot = (2270*Cm)/MPC;
// Result
printf(" \n The annual dose rate to an infant thyroid by consuming radiated milk = %.2E mrem/year \n",H_dot);
