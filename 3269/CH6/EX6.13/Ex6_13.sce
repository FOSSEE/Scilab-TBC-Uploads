// Example 6.13
clear all;
clc;

// Using the data given in the problem 6.12
rdist = 25.4;                         // Distance between the rods in cm
a = 1.02;                             // Radius of the rod in cm
b = rdist/sqrt(%pi);                  // Radius of equivalent cell
V = (b^2-a^2)/a^2;                    // Ratio of volumes of moderator to fuel 
// Using the data from Table II.3 for Uranium-238 density and atom density 
rho = 19.1;                           // Uranium-238 density in g/cm^3
N_F = 0.0483;                         // Atom density in terms of 10^(24)
// Using Table 6.5 for Uranium-238 
A = 2.8;
C = 38.3;
// Using Table 6.6 for graphite
// Let zeta_M*SIGMA_sM = s
s = 0.0608;
I = A+C/sqrt(a*rho);                  // Empirical expression of resonance integral parameter
// Calculation
p = exp(-(N_F*I)/(s*V));
// Result
printf("\n Resonance escape probability = %.4f \n",p);

