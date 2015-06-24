// Calculate Av,Zo,Zi
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-28 in page 332

clear; clc; close;

// Given data
Rd=15; // Drain resistance in k-ohms
Rg=1; // Gate resistance in M-ohms
rd=5; // Dynamic resistance in k-ohms
gm=5; // Transconductance in m-mho
Vdd=20; // Drain voltage in volts

// Calculation
mu=rd*gm;
Av=(mu*Rd)/(rd+Rd);
Zo=rd;
Zi=Rg;
printf("(a)Av = %0.2f\n(b)Zo = %0.0f k-ohms\n(c)Zi = %0.0f M-ohms",Av,Zo,Zi);

// Result
// (a) Av = 18.75
// (b) Zo = 5 K-ohms
// (c) Zi = 1 M-ohms