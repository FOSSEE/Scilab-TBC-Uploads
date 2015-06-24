// Example 7.13
clear all;
clc;

// Given data
p = 0.878;                                // Resonance escape probability
T = 273+350;                              // Given temeprature converted in Kelvin
d = 2.8;                                  // Diameter of rod in cm
a = d/2;                                  // Radius of rod in cm
rho = 19.1;                               // Density of uranium in g/cm^3
// Using data from Table 7.4 for Uranium-238
A = 48*10^(-4);                           // Constant value
C = 1.28*10^(-2);                         // Constant value
beta_I = A+C/(a*rho);                     // A parameter

// Calculation
alpha_prompt = -(beta_I/(2*sqrt(T)))*log(1/p);
// Result
printf('\n The prompt temperature coefficient = %.2E per K \n',alpha_prompt);

