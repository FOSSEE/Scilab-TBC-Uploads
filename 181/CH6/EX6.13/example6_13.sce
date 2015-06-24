// Find Vgs,operating region,Id,Rd
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 6-13 in page 288

clear; clc; close;

// Given data
Vdd=10; // Drain voltage in in V
Vds=6; // Drain-source voltage in V
K=0.2*10^-3; // Constant in mA/V^2
Vt=1; // Voltage given

// Calculation
Vgs=Vds;
printf("(a)Vgs = %0.0f V\n",Vgs);
printf("Vds=6V>Vgs-Vt=5V\n");
Id=K*(Vgs-Vt)^2;
Rd=(Vdd-Vds)/Id;
printf("(b)Id = %0.0e A\n",Id);
printf("(c)Rd = %0.0f ohms",Rd);

// Result
// (a) Vgs = 6 V
// (b) Id = 5 mA
// (c) Rd = 800 ohms