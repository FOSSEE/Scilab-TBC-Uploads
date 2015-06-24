// Calculate Zo for rd=50k-ohms
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-32 in page 337

clear; clc; close;

// Given data
rd=50*10^3; // Dynamic resistance in K-ohms
Rd=20*10^3; // Drain resistance in K-ohms

// Calculation
Zo=(rd*Rd)/(rd+Rd);
printf("Output impedance Zo = %0.3e ohms",Zo);

// Result
// Zo = 14.28 K-ohms