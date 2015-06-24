// To find Apparent and actual resistance 
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 1-8 in Page 7


clear; clc; close;

// Given data
I_T = 800*(10^-3); // Reading of the milliammeter in ampere
V_T = 40; // Reading of the voltmeter in volt
sensitivity = 1000; // sensitivity of voltmeter in ohm/volt
scale = 150; // scale of the voltmeter

//Calculations
R_T = V_T / I_T; // formula to calculate total circuit resistance
printf("(a)  The apparent circuit resistance neglecting the resistance of milliammeter, R_T = %0.2f ohm\n",R_T);

R_V = sensitivity * scale; // calculating resistance of voltmeter
R_X = (R_T * R_V)/(R_V - R_T); // effective circuit resistance due to loading effect
printf("(b)  The actual circuit resistance with the loading effect of voltmeter, R_X = %0.2f ohm\n", R_X);

percentage_error = (R_X - R_T)*100/ R_X;
// %error = (actual-apparent)/ actual
printf("(c)  The percentage error due to loading effect of voltmeter = %0.2f%%",percentage_error);

//result
// (a)  The apparent circuit resistance neglecting the resistance of milliammeter, R_T = 50.00 ohm
// (b)  The actual circuit resistance with the loading effect of voltmeter, R_X = 50.02 ohm
// (c)  The percentage error due to loading effect of voltmeter = 0.03% 


// The result shown in the textbook is printed incorrectly and does not match with the correct result

