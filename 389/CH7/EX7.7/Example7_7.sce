clear;
clc;

// Illustration 7.7
// Page: 236

printf('Illustration 7.7 - Page: 236\n\n');

// solution

//****Data****//
// A = water vapour; B = air
V = 100;// [m^3]
Tempi = 55;// [OC]
Tempf = 110;// [OC]
//*****//

// From Illustration 7.6
vH = 0.974;// [m^3/kg]
Cs = 1061.5;// [J/kg]
WB = V/vH;// [kg]
Q = WB*Cs*(Tempf-Tempi);// [J]
printf("Heat recquired is %e J\n",Q);