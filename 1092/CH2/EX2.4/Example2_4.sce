// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 2: Dynamo Construction and Windings
// Example 2-4

clear; clc; close; // Clear the work space and console.

// Given data
fractional_pitch = 13 / 16;
slot =96; // No. of slots
P = 6; // No. of poles

// Calculation
k_p = sind( ( fractional_pitch * 180 ) / 2 ); // Pitch factor

// Display the result
disp("Example 2-4 Solution : ")
printf("\n kp = %.4f ", k_p );
