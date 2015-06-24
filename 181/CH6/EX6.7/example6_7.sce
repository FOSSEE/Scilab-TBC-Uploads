// Determine Vgs,Id,Vds
// Determine Vgs,Id,Vds,operating region
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 6-7 in page 277

clear; clc; close;

// Given data
Ids=8*10^-3; // Drain current in mA
Vp=-4; // Peak voltage in V
Vdd=18; // Drain voltage in V
Rd=8*10^3; // Drain resistance in K-ohms

// Calculation
vgs1=(-214+sqrt(214^2-(4*63*180)))/(2*63);
vgs2=(-214-sqrt(214^2-(4*63*180)))/(2*63);
printf("(a)Vgs = %0.2f V,%0.2f V\n",vgs1,vgs2);
id1=-vgs1/(1*10^3);
id2=-vgs2/(1*10^3);
printf("(b)Id = %0.2e A,%0.2e A\n",id1,id2);
Vds1=((-9*10^3)*id1)+18;
Vds2=((-9*10^3)*id2)+18;
printf("(c)Vds = %0.2f V,%0.2f V",Vds1,Vds2);

// Result
// (a) Vgs = -1.53 V,-1.86 V
// (b) Id = 1.53 mA,1.86 mA
// (c) Vds = 4.23 V,1.26 V