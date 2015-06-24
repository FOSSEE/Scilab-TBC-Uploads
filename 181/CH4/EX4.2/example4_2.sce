// Calculate alpha using beta
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 4-2 in page 209

clear; clc; close;

// Given Data
beta_bjt=90; // beta gain for the BJT
Ic=4*10^-3; // Collector Current in mA

// Calculations
alpha=beta_bjt/(1+beta_bjt); 
Ib=Ic/beta_bjt; 
Ie=Ic+Ib; 

printf("(a)The Current gain alpha for BJT is %0.3f \n",alpha);
printf("(b)The value of the base Current is %0.2e A \n",Ib);
printf("(c)The value of the Emitter Current is %0.2e A \n",Ie);

// Results
// (a) The Current Gain alpha for BJT is 0.989
// (b) The value of the Base Current is 44.44 mu-A
// (c) The value of the Emitter Current is 4.04 mA