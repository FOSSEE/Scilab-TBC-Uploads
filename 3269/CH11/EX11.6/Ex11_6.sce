// Example 11.6
clear all;
clc;

// Given data
E = 0.66;                                       // Energy of gamma ray emitted by caesium in MeV
x = 100;                                        // Height of exposure in cm
// Using the data from Table II.5 for air at E = 0.66 MeV
mua_rho = 0.0294;                               // The ratio of absorption coefficient to density of air in cm^2/g
// Using the data from Table II.4 for air at E = 0.66 MeV
mu_rho = 0.0775;                               // The ratio of attenuation coefficient to density of air in cm^2/g
// Using standard value for density of air
rho = 1.293*10^(-3);
mu = mu_rho*rho;
mux = mu*x;
gamma = 0.57722;                                  // Euler's constant
E1 = -gamma+log(1/mux)+mux;                       // Conversion factor 
// Using parameter data from Table 11.16
C = 1.41;                                       // A constant
beta = 0.0857;                                  // A constant
// Calculation
H_dot_S = 3.39*10^(-2)*E*mua_rho*(E1+(C*exp(-(1-beta)*mux)/(1-beta)));
// Converting time in hours by 1 hour = 3600 seconds
// Result
printf(" \n The gamma ray dose rate conversion factor due to caesium-137 = %.2E rem*m^2/sec-Ci or %.2f rem*m^2/hour-Ci\n",H_dot_S,H_dot_S*3600);

