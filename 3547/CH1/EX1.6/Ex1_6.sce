// Example 1.6
// To find refractive index of of the glass
// Page no.25

clc;
clear;

// Given data
phi=0.7297;                          // Critical angle for glass-air interface
n2=1;                                // Refractive index of air
n1=n2/sin(phi);                      // Refractive index of glass

// Displaying the result in command window
printf('\n Refractive index of the glass = %0.1f',n1);
