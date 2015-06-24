// Find Id when Vgs=4V
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 6-15 in page 288

clear; clc; close;

// Given data
K=0.15*10^-3; // Constant in mA/V^2
Vt=2; // Given voltgae in V
Vdd=12; // Drain voltage in V
Vgs=4; // Gate-source voltage in V

// Calculation
Vgg=sqrt(5.4/0.15)+2;
Id=K*(Vgs-Vt)^2;
printf("(a)Vgg = %0.0f V,\n(b)Id = %0.1e A",Vgg,Id);

// Result
// (a) Vgg = 8 V
// (b) Id = 0.6 mA