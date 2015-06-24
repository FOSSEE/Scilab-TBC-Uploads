// Determine Vgs,Id,Vds,operating region
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 6-6 in page 276

clear; clc; close;

// Given data
Ids=16*10^-3; // Drain current in mA
Vp=-4; // Peak voltage in V
Vdd=18; // Drain voltage in V
Rd=500; // Drain resistance in ohms

// Calculation
vgs1=(-10+sqrt(100-64))/2;
vgs2=(-10-sqrt(100-64))/2;
printf("(a)Vgs = %d V,%d V\n",vgs1,vgs2);
id=-vgs1/500;
Vds=18-((1*10^3)*(4*10^-3));
printf("(b)id = %0.0e A\n",id);
printf("(c)Vds = %0.0f V\n",Vds);
printf("Saturation region operation is confirmed from above results");

// Result
// (a) Vgs = -2V
// (b) Id = 4 mA, 
// (c) Vds = 14 V, 
