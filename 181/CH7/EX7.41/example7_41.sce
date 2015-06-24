// Calculate voltage amplification in circuit
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-41 in page 343

clear; clc; close;

// Given data
gfs=2*10^-3; // Transconductance in mS
Rl=10*10^3; // Load resistance

// Calculation
Av=gfs*Rl;
printf("Av = %0.0f",Av);

// Result 
// Av = 20