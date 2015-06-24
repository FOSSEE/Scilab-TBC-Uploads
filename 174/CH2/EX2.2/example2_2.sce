// To convert flux density to different units
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 2-2 in Page 29

clear; clc; close;

// Given data
B_cm = 20; // flux density in maxwell/sq.cm

//Calculations

B_in = B_cm *2.54^2; // converting to lines/sq.inch
printf("The flux density in lines/sq.in = %d lines/(in^2)",B_in);

//Result
// The flux density in lines/sq.in = 129 lines/(in^2) 


