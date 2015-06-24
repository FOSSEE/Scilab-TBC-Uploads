// Find Vgs,Vp
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-37 in page 340

clear; clc; close;

// Given data
Idss=12; // Drain-source current in mA
Vgs_off=-6; // Gate-source voltage when FET is off

// Calculation
Vgs=6*(sqrt(5/12)-1);
Vp=Vgs_off;
printf("(a)Vgs = %0.2f V\n(b)Vp = -Vgs(off) = 6V",Vgs);

// Result
// (a) Vgs = -2.13 V
// (b) Vp = 6 V