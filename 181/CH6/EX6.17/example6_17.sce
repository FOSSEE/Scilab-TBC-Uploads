// Determine Rd
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 6-17 in page 289

clear; clc; close;

// Given data
K=0.25*10^-3; // Constant in mA/V^2;
Vt=2; // Given voltage in V
Rd=1*10^3; // Drain resistance in ohms
Vdd=16; // Drain voltage in V
Vgg=4; // Gate voltage in V

// Calculation
id=K*(4-Vt)^2;
Vd=(-1*10^3*id)+16;
printf("(a)Id = %0.0e A,\n(b)Vd = %0.0f V\n",id,Vd);
printf("Since Vds=15>Vgs-Vt=2,active region operation is confirmed");

// Result
// (a) Id = 1 mA
// (b) Vds = 15 V