// To find dynamic range of spectrum analyser
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 9-1 in Page 277


clear; clc; close;

// Given data
I_p = +25; //Third order intercept point in dBm
MDS = -85; //noise level in dBm

//Calculations

dynamic_range = 2/3*(I_p -MDS);
printf("The dynamic range of the spectrum analyser = %d dB",dynamic_range);

//Result
// The dynamic range of the spectrum analyser = 73 dB 
