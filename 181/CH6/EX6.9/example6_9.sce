// Find Id,Vgs,Vds,region of operation
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 6-9 in page 277

clear; clc; close;

// Given data
Idss=4*10^-3; // Drain current in mA
Vp=-2; // Peak voltage in V
Vdd=10; // Supply voltage in V
Vgs=0; // Gate source voltage in V

// Calculation
Id=Idss*(1-(Vgs/Vp));
printf("(a)Id = %0.0e A\n",Id);
printf("(b)Since Id=Idss, Vgs=0 V\n");
Vds=10-Vgs;
printf("(c)Vds = %0.0f V\n",Vds);
printf("Since Vds=10V>Vgs-Vp=2V,Active region operation of upper JFET is confirmed");

// Result
// (a) Id = 4 mA,
// (b) Vgs = 0 V,
// (c) Vds = 10 V