// Find operating region,Vgs,Vds,Rd
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 6-14 in page 288

clear; clc; close;

// Given data
K=0.2*10^-3; // Constant in mA/V^2
Vt=1; // Given voltage in V
Vdd=10; // Drain voltage in V
Id=3.2*10^-3; // Drain current in mA

// Calculation
printf("Vds=Vgs>Vgs-Vt=Active region operation\n");
Vgs=Vt+sqrt(Id/K);
Vds=Vgs;
Rd=(Vdd-Vds)/Id;
printf("(a)Vgs = %0.0f V,\n(b)Vds = %0.0f V,\n(c)Rd = %0.2e ohm",Vgs,Vds,Rd);

// Result
// (a) Vgs = 5 V
// (b) Vds = 5 V
// (c) Rd = 1.56 K-ohms