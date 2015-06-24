// Example 6.12
clear all;
clc;

// Given data
rdist = 25.4;                     // Distance between the rods in cm
a = 1.02;                         // Radius of a rod in cm
// From the Figure 6.9
b = rdist/sqrt(%pi);             // Radius of equivalent cell in cm
// Using the data from Table 5.2
L_F = 1.55;                      // Diffusion length of uranium fuel in cm
L_M = 59;                        // Diffusion length of graphite moderator in cm
// Using the data from Table II.3 at thermal energy
SIGMA_aM = 0.0002728;           // Macroscopic absorption cross section of graphite moderator in barns
SIGMA_aF = 0.3668;              // Macroscopic absorption cross section of uranium fuel in barns
// Let
x = a/L_F;
y = a/L_M;
z = b/L_M;
// The series expansion relations are
F = 1+(0.5*(x/2)^2)-((1/12)*(x/2)^4)+((1/48)*(x/2)^6);
E = 1+(z^2/2)*(((z^2*log(z/y))/(z^2-y^2))-(3/4)+(y^2/(4*z^2)));
// Let the ratio of volumes of moderator to fuel is denoted by V
V = (b^2-a^2)/a^2;
// Calculation
f = 1/((SIGMA_aM*V*F/SIGMA_aF)+E);
// Result
printf("\n The thermal utilization factor = %.4f \n",f);
// There is a slight variation in the value as compared from the textbook. This is due to approximation of the parameters value in textbook.
