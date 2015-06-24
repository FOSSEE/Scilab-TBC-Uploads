// To find Total resistance
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 1-2 in Page 4


clear; clc; close;

// Given data
R_1 = 18.7; // The first resistance is 18.7ohm
R_2 = 3.624; // The second resistance is 3.624ohm

// Calculations
R_T = R_1 + R_2; // formula to calculate total resistance in series
printf("The total resistance connected in series = %0.3f ohm\n",R_T);
printf("As one of the resistance is accurate to only tenths of an ohm, The result should be reduced to the nearest tenth. \n Hence ")
printf("the total resistance is = %0.1f ohm",R_T);

//Result
// The total resistance connected in series = 22.324 ohm
// As one of the resistance is accurate to only tenths of an ohm, The result should be reduced to the nearest tenth. 
// Hence the total resistance is = 22.3 ohm 


