// Example no. 2.12
// To find the delay between the shortest and longest path.
// Page no. 81

clc;
clear;

// Given data
NA=0.2;                                         // Numerical aperture
L=2*10^3;                                       // Fiber length in meters
n1=1.45;                                        // Core refractive index
delta=(NA)^2/(2*n1^2);                          // Relative index difference
n2=n1;                                          // since difference between core index and cladding index is smaller
c=3*10^8;                                       // Speed of ligth in m/s

// The delay between the shortest and longest path.
deltaT=((n1^2*L*delta)/(c*n2));                // the delay between the shortest and longest path.

// Displaying the result in command window
printf('\n The delay between the shortest and longest path = %0.2f ns',deltaT*10^9);
