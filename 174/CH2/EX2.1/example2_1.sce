// To convert area in metre to feet
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 2-1 in Page 29

clear; clc; close;

// Given data
A_m = 5000; // area in metre^2 unit

//Calculation
A_ft = A_m * (1/0.3048)^2; // As 1ft = 0.3048m
printf("The area in feet = %d sq.ft",round(A_ft));

//Result
// The area in feet = 53820 sq.ft 
