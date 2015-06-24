// Find values of R2,Vdd,Vds
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-35 in page 338

clear; clc; close;

// Given data
Vp=-5; // Pinch off voltage in V
Idss=12*10^-3; // Drain-source current in mA
Vdd=18; // Drain voltage in V
Rs=2*10^3; // Source resistance in K-ohms
Rd=2*10^3; // Drain resistance in K-ohms
R2=90*10^3; // Original value of R2 in K-ohms

// Calculation
Vgs1=(-5.3+sqrt(5.3^2-(4*0.48*10.35)))/(2*0.48);
Vgs2=(-5.3-sqrt(5.3^2-(4*0.48*10.35)))/(2*0.48);
printf("Vgs = %0.2f V or %0.2f V\nTherefore Vgs = -2.53 V\n",Vgs1,Vgs2);
Id=(3.306-Vgs2)/2;
Vds=18-(Id*Rd)-(Id*Rs);
r2=(13.47*400)/4.53;
vdd=((16-2.53)*(400+90))/90;
vds=vdd-16-16;
printf("(a)The new value of R2 is %0.1f K-ohm\n",r2);
printf("(b)The new value of Vdd = %0.2f V\n",vdd);
printf("(c)The new value of Vds = %0.2f V",vds);

// Result
// (a) R2 = 1189.4 K-ohm
// (b) Vdd = 73.34 V
// (c) Vds = 41.34 V