// Compute decrease in capacitance
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-6 in page 87

clear; clc; close;

// Given data
V=6.5; // Incresed bias voltage in V
lambda=(20*sqrt(5)); // Constant of calculation

// Calculation
C_T=lambda/sqrt(V);

printf("Transition capacitance of abrupt junction at 6.5 V = %0.2f pF\n",C_T);
printf("This corresponds to a decrese of 2.46 pF");

// Result
// Transition capacitance = 17.54 pF
// This corresponds to a decrese of 2.46 pF