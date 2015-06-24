// To calculate series Resistance across SCR
// Basic Electronics
// By Debashis De
// First Edition, 2010 
// Dorling Kindersley Pvt. Ltd. India
// Example 8-5 in page 378

clear; clc; close;

// Given Data
Ig_min=0.5; // Minimum gate current for quick ON, in A
Vs=15; // Gate source voltage in V
slope=16; // Slope of Gate-Cathode Characteristic line

// Calculations
Vg=slope*Ig_min; 
Rg=(Vs-Vg)/Ig_min; 

printf("The value of Gate Resistance is %0.2f ohm \n",Rg);

// Results
// The value of Gate Resistance is 14 ohm