// Find Vgs,Id,operating region
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 6-20 in page 290

clear; clc; close;

// Given data
Ids=4*10^-3; // Drain-source current in mA
Vp=-4; // Peak voltage in V
Vdd=10; // Drain voltage in V
Vds=6; // Drain-source voltage in V

// Calculation
Vgs=Vds;
printf("(a)Vgs = %0.0f V\n",Vgs);
printf("(b)Vds=Vgs<Vgs-Vp.Hence ohmic region operation\n");
Id=4*10^-3*((2*(5/2)*(3/2))-(9/4));
printf("(c)Id = %0.1e A",Id);

// Result
// (a) Vgs = 6 V
// Ohmic region operation is confirmed
// (c) Id = 21 mA