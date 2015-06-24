// Find Id,Vds1,Vds2
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 6-18 in page 289

clear; clc; close;

// Given data
Ids1=8*10-3; // Drain-source current of M1 in mA
Vp=-4; // Peak voltage in V
Ids2=16*10^-3; // Drain-source current of M2 in mA
Vdd=11; // Drain voltage in V
Vgg=10; // Gate voltage in V

// Calculation
Id=Ids2;
printf("(a)Id = %0.2e A\n",Id);
Vds=(28+sqrt(28^2-128))/2;
Vds1=(28-sqrt(28^2-128))/2;
printf("(b)Vds1 = %0.2f V, %0.2f V\n",Vds,Vds1);
printf("For ohmic operation Vds1 = 1.19 V\n");
Vds2=Vdd-1.19;
printf("(c)Vds2 = %0.2f V",Vds2);

// Result
// (a) Id = 16 mA
// (b) Vds1 = 1.19 V
// (c) Vds2 = 9.81 V