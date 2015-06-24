// Find amplification
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-2 in page 312

clear; clc; close;

// Given data
mu=30; // FET parameter
rd=5; // FET parameter
Rd=10; // FET parameter value in ohms
R=50; // Resistor value in ohms

// Calculation
Av=(-299/50)/((1/rd)+(1/Rd)+(1/R));
printf("Amplification Av = %0.1f",Av);

// Result
// Av = -18.7