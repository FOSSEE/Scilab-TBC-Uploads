//Example 5.9, Page number 5.30

clc;clear;close

// variable declaration
N_a=0.3 // numerical aperture
Gamma=45 // coefficient

// Calculations
theta_a=asin(N_a) // degree
theta_as=asin((N_a)/cos(Gamma)) // degree

// Results
printf("Acceptance angle, theta_a = %.2f degrees",(theta_a*180/%pi))
printf("\nFor skew rays,theta_as = %.2f degrees",(theta_as*180/%pi))
// Answer given in the textbook is wrong
