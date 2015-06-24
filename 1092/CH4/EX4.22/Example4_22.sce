// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 4: DC Dynamo Torque Relations-DC Motors
// Example 4-22

clear; clc; close; // Clear the work space and console.

// Given data
P = 50 ; // Power rating of the servo-motor in W
S = 3000 ; // Full-load speed of the servo-motor in rpm

// Calculation
T_lbft = ( 7.04 * P ) / S ; // Output torque in lb-ft
T_ounceinch = T_lbft * 192 ; // Output torque in ounce-inches

// Display the result
disp(" Example 4-22 Solution : ");
printf(" \n  T = %.1f oz.in ", T_ounceinch );
