// To find the maximum error
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 1-13 in Page 15


clear; clc; close;

// Given data
// For the given tolerence of 0.1% 
// highest value of resistor is 1.001 times the nominal value
// lowest value of resistor is 0.999 times the nominal value

//Calculations
V_out_max = 1.001 * 1.001/ 0.999;
V_out_min = 0.999 * 0.999/ 1.003;
total_var = 0.1 * 3; // total variation of the resultant voltage is sum of tolerences
printf("The total variation of the resultant voltage = +/- %0.1f %%",total_var);

//Result
// The total variation of the resultant voltage = +/- 0.3 %

