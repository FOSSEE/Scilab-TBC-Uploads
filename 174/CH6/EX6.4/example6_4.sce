// To find the distributed capacitance
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 6-4 in Page 162


clear; clc; close;

// Given data
// Frequency measurements in Hz
f_1 = 2*10^6;
f_2 = 4*10^6;
// Value of tuning capacitor in F
C_1 = 460*10^-12;
C_2 = 100*10^-12;

//Calculations
 C_d = (C_1- (4*C_2))/3;
printf("C_d = %0.0E F\n",C_d);
printf("i.e The value of the distributed capacitance = %d pF",(C_d*10^12));

//Result
// C_d = 2E-011 F
// i.e The value of the distributed capacitance = 20 pF 

