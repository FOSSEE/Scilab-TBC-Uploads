// To convert density to a different unit
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 2-4 in Page 29

clear; clc; close;

// Given data
Density_ft = 62.5;

//Calcualtions
Density_in = 62.5 * (1/12)^3;
Density_cm = Density_in * 453.6 * (1/2.54)^3;
printf("(a)  The density of water in lb/cubic inch = %f lb/(in^3).\n",Density_in);
printf("(b)  The density of water in g/cubic cm = %f g/(cm^3).",Density_cm);

//Result
// (a)  The density of water in lb/cubic inch = 0.036169 lb/(in^3).
// (b)  The density of water in g/cubic cm = 1.001171 g/(cm^3). 
