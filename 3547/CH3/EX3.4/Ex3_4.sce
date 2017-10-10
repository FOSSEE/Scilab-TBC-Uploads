// Example no. 3.4
// To calculate the energy density.
// Page no. 107

clc;
clear;

// Given data
P=20*10^(-3);                                     // The mean power in W
A=100*10^(-12);                                   // The area perpendicular to the direction of light propagation in m^2
n=3.2;                                            // Refractive index of gain medium
c=3*10^8;                                         // Speed of ligth in m/s
I=P/A;                                            // The optical intensity in W/m^2

// The energy density
u=(n*I)/c;                                        // The energy density in J/m^3

// Displaying the result in command window
printf('\n The energy density = %0.2f J/m^3',u);
