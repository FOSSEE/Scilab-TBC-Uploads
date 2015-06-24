// To find Limiting error 
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 1-12 in Page 14


clear; clc; close;

// Given data
scale = 150;
percentage_accuracy = 1/100; // accuracy of 1% full scale reading
V = 83; //voltage measured by instrument = 83 volt 

//Calculations
limiting_error = percentage_accuracy * scale;
printf("The magnitude of the limiting error = %0.1f V\n",limiting_error);

percentage_error = limiting_error/V * 100;
printf("The percentage limiting error = %0.2f percent",percentage_error);

//Result
// The magnitude of the limiting error = 1.5 V
// The percentage limiting error = 1.81 percent 
