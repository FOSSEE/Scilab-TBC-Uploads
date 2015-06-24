// To find limiting error
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 1-14 in Page 16


clear; clc; close;

// Given data
// let I = X_1 +/- Y_1
//     R = X_2 +/- Y_2
X_1 = 2.00;
Y_1 = 0.5;
X_2 = 100;
Y_2 = 0.2;

//Calculations
P_1 = ((1+0.005)^2)*(1+0.002);
printf("For the worst possible combination of the values of current and resistance,\nThe highest power dissipation becomes,\n");
printf("P = %0.3f (I^2)*R Watts\n",P_1);
P_2 = ((1-0.005)^2)*(1-0.002);
printf("For the lowest power dissipation.\nP = %0.3f (I^2)*R Watts\n",P_2)
lim_error = 2 * Y_1 + Y_2;
printf("The limiting error = +/- %0.1f%%",lim_error);

//Result
// For the worst possible combination of the values of current and resistance,
// The highest power dissipation becomes,
// P = 1.012 (I^2)*R Watts
// For the lowest power dissipation.
// P = 0.988 (I^2)*R Watts
// The limiting error = +/- 1.2% 
