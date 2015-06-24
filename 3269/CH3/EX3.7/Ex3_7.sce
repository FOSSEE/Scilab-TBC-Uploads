// Example 3.7
clear all;
clc;

// Given data
phi = 1*10^(13);                            // Neutron flux in neutrons/cm^3
v = 64000;                                  // Volume of research reactor in cm^3
sigmaf = 0.1;                               // Macroscopic fission cross section in cm^(-1)
// The energy released per fission reaction is 200 MeV
// 1 MeV = 1.6*10^(-13) joule
E = 200*1.6*10^(-13);
// Calculation 
fiss_rate = sigmaf*phi;                     // Fission rate in neutrons/cm^2-sec
power_cc = E*fiss_rate/10^6;                // Reactor power/cc
power = power_cc*v;
printf('\n Reactor power of a research reactor = %d MW\n',power);
