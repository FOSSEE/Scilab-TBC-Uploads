// Calculate beta for the BJT
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 4-4 in page 209

clear; clc; close;

// Given Data
Ib=20*10^-6; // Base current in micro-A
Ic=5*10^-3; // Collector Current in mA

// Calculations
beta_bjt=Ic/Ib;

printf("The Current gain beta for the Device is %0.0f \n",beta_bjt);

// Results
// The Current Gain beta for the Device is 250