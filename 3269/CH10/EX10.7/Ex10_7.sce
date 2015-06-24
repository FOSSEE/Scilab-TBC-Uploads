// Example 10.7
clear all;
clc;

// Given data
E = 14;                                         // Energy of neutrons in MeV
phi0 = 10^9;                                    // Intensity of neutrons in neutrons/cm^2-sec from isotropic point source
// 1 feet  = 30.48 cm
d = 10*30.48;                                   // Distance of concrete wall from a point source in cm
// As Intensity obeys inverse square law
I = phi0/(4*%pi*d^2);                           // Intensity of neutron beam in terms of neutrons/cm^2-sec
H_dot = 1;                                      // The required dose equivalent rate in mrem/hour
// From Figure 10.23(b)
H0_dot = H_dot/I;                                // The dose equivalent rate
// Result
printf(" \n The reduced dose equivalent rate due to concrete wall is = %.2E mrem/hr \n",H0_dot);
// By looking into Figure 10.23(b) on thickness axis
printf(" \n The concrete slab thickness is = 70 cm \n");

