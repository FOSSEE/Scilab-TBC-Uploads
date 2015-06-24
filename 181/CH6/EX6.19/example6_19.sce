// Find operating region,Vgs,Vds,Id
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 6-19 in page 290

clear; clc; close;

// Given data
Ids = 4*10^-3; // Drain-source current in mA
Vp=-4; // Peak voltage in V
Vdd=10; // Drain voltage in V
Rd=1*10^3; // Drain resistance in K-ohms

// Calculation
printf("(a)Vd=Vgs<Vgs-Vp.Hence ohmic region operation is confirmed\n");
Vgs1=(-12+sqrt(12^2+160))/2;
Vgs2=(-12-sqrt(12^2+160))/2;
printf("(b)Vgs = %0.2f V,%0.2f V\n",Vgs1,Vgs2);
Vds=Vgs1;
id=(10-Vds)/(1*10^3);
printf("(c)Vds = %0.2f V,\n(d)Id = %0.2e A",Vds,id);

// Result
// (a) Ohmic region operation is confirmed
// (b) Vgs = 2.72V
// (c) Vds = 2.72V
// (d) Id = 7.28mA