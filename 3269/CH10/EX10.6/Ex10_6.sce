// Example 10.6
clear all;
clc;

// Given data
// Assuming average energy produced per fission reaction is 200 MeV 
P = 250*10^3;                                   // Power of research reactor in Watts
P_fission = 200*10^6*1.6*10^(-19);              // Energy produced in a fission reaction in terms of joule
f = 0.75;                                       // Metal volume fraction
// In this problem, both reflector and shield act as a composite shield
a = 150+15;                                     // Net shield distance in cm
// 1 litre = 1000 grams
V = 32*1000;                                    // Core volume in gram

fission_density = (P/P_fission)*(1/V);
v = 2.42;                                       // Number of fission neutrons emitted per fission
S = fission_density*v;                          // Neutron source strength in neutrons/cm^3-sec
// Assuming spherical shape
// Volume of sphere = (4/3)*pi*(radius)^3
R = ((3*V)/(4*%pi))^(1/3);
// Using the data from Table 10.4 for removal macroscopic cross section 
sigma_R = 0.174;                               // Removal macroscopic cross section of uranium in cm^-1
sigma_RW = 0.103;                               // Removal macroscopic cross section of water in cm^-1
A = 0.12;                                       // A constant
alpha = ((1-f)*sigma_RW)+(f*sigma_R);           // A parameter
// Calculation
theta = (S*A/(4*alpha))*(ceil(R)/(ceil(R)+a))^2*exp(-sigma_RW*a)*(1-exp(-2*alpha*ceil(R)));
// Converting into equivalent dose rate by referring Figure 9.12
// Fast neutron flux of 6.8 neutrons/cm^2-sec is equivalent to 1 mrem/hr
H_dot = theta/6.8;
// Result
printf(" \n Fast neutron dose rate near the surface of the shield = %.1f mrem/hour \n ",H_dot);
