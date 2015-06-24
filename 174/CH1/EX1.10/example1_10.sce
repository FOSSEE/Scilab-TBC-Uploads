// To find Average deviation
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 1-10 in Page 10


clear; clc; close;

// Given data
// These are the data found out from the example_1-9
d_1 = 0.000150;
d_2 = -0.000450;
d_3 = -0.000150;
d_4 = 0.000450;
d_5 = 0.000250;
d_6 = -0.000250;

//Calculation
D = (abs(d_1) +abs(d_2) +abs(d_3) +abs(d_4) +abs(d_5) +abs(d_6))/6;
printf("The average deviation, D = %0.2e A",D);

//Result
//  The average deviation, D = 2.83e-004 A 
