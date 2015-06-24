// Find amplification with 40k resistor instead
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-3 in page 313

clear; clc; close;

// Given data
Av=-18.7; // Amplification from prev problem
R1=2.54; // Resistance value in ohms
R=40; // Load resistor in K-ohms

// Calculation
Avs=(Av)*(R1/(R1+R));
printf("Amplification Avs = %0.2f",Avs);

// Result
// Avs = -1.11