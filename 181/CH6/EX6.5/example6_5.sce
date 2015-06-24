// Find id,Vgs,Rd,Vds
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 6-5 in page 276

clear; clc; close;

// Given data
Ids=10*10^-3; // Drain current in mA
Vp=-4; // Peak voltage in V
Vdd=12; // Drain voltage in V
Vgg=0; // Gate voltage in V

// Calculation
id=10*10^-3*(1-(2/4))^2;
Vgs=(sqrt(9/10)-1)*4;
Rd=(12-7.5)/(0.625*10^-3);
Vds=12-2-(3*0.625);
printf("(a)Id = %0.2e A\n",id);
printf("(b)Vgs = %0.3f V\n",Vgs);
printf("(c)Rd = %0.2e ohm\n",Rd);
printf("(d)Vds = %0.3f V",Vds);

// Result
// (a) Id = 2.5 mA
// Vgs = -0.205 V 
// (c) Rd = 7.2 k-ohm 
// (d) Vds = 8.125 V