// Calculate transconductance,amplification factor
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-20 in page 328

clear; clc; close;

// Given data
Id=2*10^-3; // Drain current in mA
Vgs=2; // Gate-source voltage in V
Rd=200*10^3; // Drain resistance in K-ohms

// Calculation
gm=Id/Vgs;
mu=gm*Rd;
printf("(a)Transconductance gm = %0.0e A/V\n",gm);
printf("(b)Amplification factor mu = %0.0f",mu);

// Result
// (a) gm = 1 mA/V
// (b) mu = 200