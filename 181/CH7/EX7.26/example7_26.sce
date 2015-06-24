// Calculate quiescent values of Id,Vds,Vgs
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-26 in page 330

clear; clc; close;

// Given data
Ids=20*10^-3; // Drain-souce current in mA
Vp=-4; // Pinch off voltage in volts

// Calculation
printf("We get the equation:\n0.3125*Id^2-6*Id+20=0\n");
Id1=(6+sqrt(6^2-4*0.3125*20))/(2*0.3125);
Id2=(6-sqrt(6^2-4*0.3125*20))/(2*0.3125);
printf("Id = %0.1f mA and %0.1f mA\n",Id1,Id2);
printf("We consider only %0.1f mA\n",Id2);
Vgs=-Id2*0.5;
Vds=30-(Id2*(5+0.5));
printf("Vgs = %0.2f V\n(c)Vds = %0.2f V",Vgs,Vds);

// Result
// Id = 4.3 mA
// Vgs = -2.15 V
// Vds = 6.35 V