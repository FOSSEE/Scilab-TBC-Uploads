// Find the maximum transconductance
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-54 in page 358

clear; clc; close;

// Given data
Idss=1*10^-3; // Drain-source current in mA
Vp=-5; // Pinch off voltage in V

// Calculation
gm=(2*Idss)/-Vp;
printf("gm = %0.1e mho",gm);

// Result
// gm = 0.4 m-mho