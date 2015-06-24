// Collector Current in C-E mode
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 4-3 in page 209

clear; clc; close;

// Given Data
alpha=0.90; // Current Gain of BJT
Ico=15*10^-6; // Reverse Saturation Current of BJT in micro-A
Ib=0.5*10^-3; // Base Current in C-E mode in mA

// Calculations
beta_bjt=alpha/(1-alpha);
Ic=(beta_bjt*Ib)+(beta_bjt+1)*Ico; 

printf("(a)The value of Current gain beta for BJT is %0.0f \n",beta_bjt);
printf("(b)The value of the Collector Current is %0.2e A \n",Ic);

// Results
// (a) The value of Current Gain beta for BJT is 9
// (b) The value of the Collector Current is 4.65 mA