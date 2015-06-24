// To find loss in the fiber
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 14-2 in Page 393


clear; clc; close;

// Given data
NA_1 = 0.3; // numerical apertures of Source fiber
NA_2 = 0.242; //numerical apertures of receiving fiber

//Calculations
loss = 20*log10(NA_1/NA_2);
printf("The energy that is lost through the cladding of the receiving fiber = %0.2f dB",loss);

//Result
// The energy that is lost through the cladding of the receiving fiber = 1.87 dB 
