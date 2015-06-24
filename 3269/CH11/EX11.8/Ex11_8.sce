// Example 11.8
clear all;
clc;

// Given
E = 2.4;                                    // Energy of gamma rays in MeV
r = 1000*100;                               // Distance from the building where radiation is exposed in cm
t0 = 2*3600;                                // Time of exposure in seconds
A = 3*10^7;                                 // Amount of initial radioactivity release due to Kr-88 in curie
f = 0.4;                                    // Fraction of disintegrations which release 2.4 MeV gamma rays
C0 = A*f;                                   // Effective number of curies 
T_12 = 2.79;                                // Half life of Iodine 131 in hours

lambda = 0.693/(T_12*3600);                 // Decay constant of Iodine-131 in sec^(-1)
// Using the result given in Example 11.7
lambdal = 1.16*10^(-8);                     // Decay constant corresponding to fission prouduct release from building
lambdac = lambda+lambdal;                   // Total decay constant in sec^(-1) 
// Using the data from Table II.4 for air at E = 2.4 MeV
mu_rho = 0.041;                             // The attenuation coefficient in cm^2/g
// Using standard value for density of air in g/cm^3
rho = 1.293*10^(-3);
mu = mu_rho*rho;
// Using the data from Table II.5 for air at E = 2.4 MeV
mua_rho = 0.0227;                           // The ratio of absorption coefficient to density of air in cm^2/g
printf(" \n Buildup factor is measured at %.2f",mu*r);
// Using Berger's form in Problem 11.9 
B_p = 4.7;                                  // Buildup factor due to a point source
// Calculation
H = (54*C0*(1-exp(-lambdac*t0))/lambdac)*(E*mua_rho*B_p*exp(-mu*r)/r^2);
// Result
printf(" \n The direct dose due to gamma ray exposure = %.4f rem \n",H)
// There is a slight deviation in the answer due to approximation of value in the textbook.
