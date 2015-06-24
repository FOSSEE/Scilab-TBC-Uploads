// Find the value of Rd
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 6-3 in page 275

clear; clc; close;

// Given data
Ids=12*10^-3; // Drain current in mA
Vp=-4; // Peak voltage in V
Rs=0; // Source resistance in ohms
Vds=0.1; // Drain-source voltage in V
Vgg=0; // Gate voltage in V

// Calculation
id=Ids*(50*10^-3-625*10^-6);
Rd=(15-Vds)/id;

printf("(a)i_d = %0.3e A\n",id);
printf("(b)Rd = %0.3e ohm",Rd);

// Result
// (a) i_d = 592.6 mu-A
// (b) Rd = 25.15 k-ohm