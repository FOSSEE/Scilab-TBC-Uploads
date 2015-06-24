// Calculate gain and frequency
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-47 in page 351

clear; clc; close;

// Given data
gm=2*10^-3; // Transconductance in mA/V
Rs=100*10^3; // Source resistance in K-ohms
rd=50*10^3; // Dynamic resistance in K-ohms
Ct=9*10^-12; // Total capacitance in pF
gd=2*10^-5; // Constant

// Calculation
omega=(gm+gd)/Ct;
f=omega/(2*%pi);
printf("(a)f = %0.1e Hz\n",f);
Av=gm*Rs/(1+(gm+gd)*Rs);
printf("For f=35.6MHz,\n");
Av1=(10^2*(sqrt(4.45)))/(202*sqrt(2));
printf("(b)Av = %0.3f",Av1);

// Result
// (a) f = 35.6 MHz
// (b) Av = 0.738