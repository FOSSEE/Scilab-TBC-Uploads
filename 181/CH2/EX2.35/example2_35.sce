// Calculate V_z
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-35 in page 112

clear; clc; close;

// Given data
// (a) Proof of V_z=51/sigma has been given
sigmai=1/45; // Intrinsic conductivity in 1/ohm-cm
sigmap=1/3.9; // Conductivity of p material in1/ohm-cm
I_0=6*10^-6; // Current in microA

// Calculation
Vz1=51/sigmai;
Vz2=51/sigmap;
I=I_0*(exp(100/26)-1);
printf("(a)Proof of V_z=51/sigmap has been given\n");
printf("(b)When material is intrinsic, Vz = %0.3f V\n",Vz1);
printf("(c)When resistivity drops, Vz = %0.1f V\n",Vz2);
printf("(d)I = %0.3e A",I);

// Result
// (a) Vz = 51/sigmap is proved
// (b) Vz1 = 2300V
// (c) Vz2 = 198.9V
// (d) I = 0.274 mA