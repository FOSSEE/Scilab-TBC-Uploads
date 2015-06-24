// Find Id and Vds
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 6-2 in page 274

clear; clc; close;

// Given data
Ids=12*10^-3; // Drain current in mA
Vp=-4; // Peak voltage in V
Vgs=-2; // Gate to source voltage in V
Rd=3*10^3; // Drain resistance in K-ohms
Vcc=15; // Supply voltage in V

// Calculation
id=Ids*(1-(Vgs/Vp))^2;
Vds=-id*Rd+Vcc;

printf("(a)Id = %0.0e A\n",id);
printf("(b)Vds = %0.0f V",Vds);

// Result
// (a) Id = 3mA
// (b) Vds = 6V