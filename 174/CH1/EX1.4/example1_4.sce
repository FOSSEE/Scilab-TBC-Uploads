// To find sum with range of doubt
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 1-4 in Page 5


clear; clc; close;

// Given data
// let N_1 = X_1 +/- Y_1
//     N_2 = X_2 +/- Y_2
X_1 = 826;
Y_1 = 5;
X_2 = 628;
Y_2 = 3;

//Calculations
X = (X_1 + X_2);
Y = (Y_1 + Y_2);
printf("SUM = %d +/- %d\n",X,Y);
%doubt = Y/X*100;
printf("The percentage range of doubt = +/-%0.2f%%",%doubt);

//Result
// SUM = 1454 +/- 8
// The percentage range of doubt = +/-0.55% 



