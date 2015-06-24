// Find id,Vds,slope of operation of JFET
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 6-4 in page 275

clear; clc; close;

// Given data
Ids=12*10^-3; // Drain current in mA
Vp=-4; // Peak voltage in V
Rd=1*10^3; // Drain resistance in k-ohm
Vdd=15; // Drain voltage in V

// Calculation
Id=Ids;
Vds=(-Rd*Id)+Vdd;
printf("Id = %0.2e A\n",Id);
printf("Vds = %0.0f V\n",Vds);
printf("Consider it to be operating in the ohmic region\n");
Vds1=(7+sqrt(49-45))/(3/2);
Vds2=(7-sqrt(49-45))/(3/2);
printf("Then Vds = %0.2f V,%0.2f V\n",Vds1,Vds2);
printf("6V is neglected since it is lesser than -Vp\n");
id=(15-Vds2)/(1*10^3);
Vds=Vds2;
printf("(a)Id = %0.3e A\n",id);
printf("(b)Vds = %0.2f V",Vds);
printf("Since Vds<Vgs-Vp,operation region is confirmed in the ohmic region");

// Result
// (a) Id = 11.67 mA
// (b) Vds = 3.33 V
// (c) Operation region is in the ohmic region