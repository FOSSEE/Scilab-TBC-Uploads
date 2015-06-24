// Calculate quiescent values of Id,Vgs,Vds
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-16 in page 324

clear; clc; close;

// Given data
// We find Thevenins equivalent to the left of the gate

// Calculation
Rth=(1/(200*10^3))+(1/(1.3*10^6));
A=1/Rth;
Vth=(200/1500)*60;
printf("(a)Rth = %0.3e ohms and Vth = %0.0f V\n",A,Vth);
Vgs=(8+sqrt(8^2-(4*16)))/2;
Id=-2-(Vgs/4);
printf("(b)Vgs = %0.0f V and Id = %0.2f mA\n",Vgs,Id);
Vds=-60+((18+4)*2.25);
printf("(c)Vds = %0.1f V",Vds);

// Result
// (a) Id = -3 mA
// (b) Vgs = 4 V
// (c) Vds = -10.5 V