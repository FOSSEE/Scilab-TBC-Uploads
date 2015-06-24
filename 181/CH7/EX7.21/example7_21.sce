// Calculate dynamic resistance
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-21 in page 328

clear; clc; close;

// Given data
mu=80; // Amplification factor
gm=400*10^-6; // Transconductance in micro-mho

// Calculation
rd=mu/gm;
printf("Dynamic resistance Rd = %0.1e ohm",rd);

// Result
// Rd = 0.2*10^6 ohm