// Calculate the values of Id,Vgs,Vds
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-48 in page 351

clear; clc; close;

// Given data
Vp=3; // Pinch off voltage in V
// Id = 0.2(Vgs-3)^2

// Calculation
Id1=(25+7)/10;
Id2=(25-7)/10;
printf("Id = %0.1f mA or %0.1f mA\n",Id1,Id2);
printf("FET will be cut off at Id=3.2mA.Hence Id=1.8mA\n");
Vgs=0.5*(30-18);
Vds=30-(1.8*10);
printf("Vgs = %0.0f V\nVds = %0.0f V",Vgs,Vds);

// Result
// Id = 1.8 mA
// Vgs = 6 V
// Vds = 12 V