// Calculate value of Id,Vgs,Vds
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-44 in page 345

clear; clc; close;

// Given data
Idss=4*10^-3; // Drain-source current in mA
Vp=4; // Pinch off voltage in V

// Calculation
Rth=(200*10^3*1.3*10^6)/((200*10^3)+(1.3*10^6));
Vth=(200/1500)*(1-60);
Vgs=1;
Id=(-8-Vgs)/4;
Vds=-60-((18+4)*Id);
printf("Id = %0.2f mA\nVgs = %0.0f V\nVds = %0.1f V",Id,Vgs,Vds);

// Result
// Vgs = 1 V
// Vds = -10.5 V
// Id = -2.25 mA