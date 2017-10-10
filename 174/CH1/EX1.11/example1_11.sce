// To find Std deviation and Probable error 
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 1-11 in Page 14


clear; clc; close;

// Given data
// let the 10 resistance measurements in ohm be taken as elements of matrix
x = [101.2 101.7 101.3 101.0 101.5 101.3 101.2 101.4 101.3 101.1];

//Calculations
arithmatic_mean = mean(x);
sigma = stdev(x);
probable_error = 0.6745 * sigma;
printf("(a)  The arithmatic mean of the readings = %0.1f ohm\n",arithmatic_mean);
printf("(b)  The standard deviation of the readings = %0.1f ohm\n",sigma);
printf("(c)  The probable error of the readings = %0.4f ohm",probable_error);

//Result
// (a)  The arithmatic mean of the readings = 101.3 ohm
// (b)  The standard deviation of the readings = 0.2 ohm
// (c)  The probable error of the readings = 0.1349 ohm