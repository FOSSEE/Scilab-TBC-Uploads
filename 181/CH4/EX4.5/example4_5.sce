// To Compute alpha, beta and Emitter Current
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 4-5 in page 209

clear; clc; close;

// Given Data
Ib=50*10^-6; // Base Current in mu-A
Ic=5*10^-3; // Collector Current in mA

// Calculations
Ie=Ic+Ib; 
beta_bjt=Ic/Ib;
alpha=Ic/Ie;

printf("(a)The value of the Emitter Current is %0.2e A \n",Ie);
printf("(b)The value of beta gain of the BJT is %0.0f \n",beta_bjt);
printf("(c)The value of alpha gain of the BJT is %0.3f \n",alpha);

// Results
// (a) The value of the Emitter Current is 5.05 mA
// (b) The value of the beta gain of the BJT is 100
// (c) The value of the alpha gain of the BJT is 0.990