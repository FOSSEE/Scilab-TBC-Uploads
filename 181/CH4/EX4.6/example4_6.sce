// Calculate alpha reverse and beta reverse
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 4-6 in page 210

clear; clc; close;

// Given Data
Ie=10*10^-3; // Emitter Current in mA
Ib=5*10^-3; // Base Current in mu-A

// Calculations
Ic=Ie-Ib; 
beta_reverse=Ib/Ic; 
alpha_reverse=Ie/Ic; 

printf("The value of inverse beta of the BJT is %0.0f \n",beta_reverse);
printf("The value of inverse alpha of the BJT is %0.0f \n",alpha_reverse);

// Results
// The value of inverse beta of the BJT is 1
// The value of inverse alpha of the BJT is 2