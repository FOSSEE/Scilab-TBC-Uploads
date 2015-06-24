// Reverse saturation point of current
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-10 in page 93

clear; clc; close;

// Given data
b=2.11; // Constant
Lsigma=3*10^-4; // Constant
Vt=0.026; // Threshold voltage in V
A=1.5*10^-6; // Cross sectional area in mm^2
sigmai=2.24; // Intrinsic conductivity /ohm-cm

// Calculation
I_0=((A*Vt*b*sigmai^2)/(1+b)^2)*((1/0.45)+(1/0.015));

printf("Reverse saturation point of current is %0.2e A",I_0);

// Result
// Reverse saturation point of current is 2.94 mu-A