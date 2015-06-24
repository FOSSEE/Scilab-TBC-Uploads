// Determine R,Ids,Vgs
// Determine Vgs,Id,Vds,operating region
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 6-8 in page 277

clear; clc; close;

// Given data
Vp=-3; // Peak voltage in V
Vgg=5; // Gate voltage in V
Ids=10*10^-3; // Drain current in mA

// Calculation
R=5/(10*10^-3);
printf("(a)R = %0.0f ohm\n",R);
Ids=5/400;
Vds=(2*Ids*R)+15;
printf("(b)Idss = %0.2e A\n",Ids);
printf("(c)Vds = %0.0f V\n",Vds);
printf("This confirms active region\n");
Rid=14/2;
Vgs=Vgg-Rid;
printf("(d)Vgs = %0.0f V\n",Vgs);
printf("Vds=2>Vgs-Vp=-1.5+3=1.5 -> Active region");

// Result
// (a) R = 500ohm, 
// (b) Ids = 12.5mA,
// (c) Vgs = -2V