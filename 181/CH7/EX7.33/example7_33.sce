// Find voltage gain,Current gain ratio
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-33 in page 337

clear; clc; close;

// Given data
Rd=5*10^3; // Drain resistance in K-ohms
Rg=500*10^3; // Gate resistance in K-ohms
mu=60; // Amplification factor
rds=30*10^3; // Dynamic resistance in K-ohms

// Calculation
Av=(mu*Rd)/(Rd+rds);
Ai=(mu*Rg)/(rds+Rd);
printf("(a)Voltage gain Av = %0.2f\n(b)Current gain Ai = %0.2f",Av,Ai);

// Reuslt
// (a) Av = 8.57
// (b) Ai = 857.14