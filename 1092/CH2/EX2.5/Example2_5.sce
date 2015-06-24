// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 2: Dynamo Construction and Windings
// Example 2-5

clear; clc; close; // Clear the work space and console.

// Given data
P = 12; // No. of poles
theta = 360; // No. of mechanical degrees of rotation
alpha_b = 180; // No. of electrical degrees for finding case b in the question

// Calculations
alpha = ( P * theta ) / 2; // No. of electrical degrees in one revolution
n = alpha / 360; // No. of ac cycles
theta_b = ( 2 * alpha_b ) / P; // No. of mechanical degrees of rotation
// for finding case b in the question

// Display the results
disp("Example 2-5 Solution : ")
printf("\n a: alpha = %d degrees", alpha);
printf("\n    n = %d cycles ", n);
printf("\n b: theta = %d mechanical degrees ", theta_b );
