// Find the value of Rs
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-43 in page 344

clear; clc; close;

// Given data
Idss=10*10^-3; // Drain-source current in mA
Vp=-5; // Pinch off voltage in V

// Calculation
Vgs = 5*(sqrt(6.4/10)-1);
Rs=-Vgs/(6.4*10^-3);
printf("Rs = %0.0f ohms",Rs);

// Result
// Rs = 156 ohms