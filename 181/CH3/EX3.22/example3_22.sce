// DC output voltage and ripple voltage
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 3-22 in page 164

clear; clc; close;

// Given data
C=4; // Capacitances in micro-F
L=20; // Inductance choke in H
Il=50*10^-6; // Load current in micro-A
R=200; // Resistance of choke in ohm

// Calculation
Vdc=(300*sqrt(2))-((4170/C)*0.05)-(0.05*R);
r=(3300*0.05)/(4*4*20*353);
Vrms=r*Vdc;

printf("(a)Output voltage = %0.2f V\n",Vdc);
printf("(b)Ripple voltage = %0.3f V",Vrms);

// Result
// (a) Output voltage = 362.13 V
// (b) Ripple voltage = 0.529 V