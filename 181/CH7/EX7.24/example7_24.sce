// Find voltage gain of amplifier
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-24 in page 329

clear; clc; close;

// Given data
Rl=250; // Load resistance in k-ohms
gm=0.5; // Transconductance in mA/V
rd=200; // Dynamic resistance in k-ohms

// Calculation
mu=rd*gm;
Av=(-mu*Rl)/(rd+Rl);
printf("Voltage gain Av = %0.2f",Av);

// Result
// Voltage gain Av = -55.55