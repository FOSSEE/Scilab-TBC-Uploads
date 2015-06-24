// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 4: DC Dynamo Torque Relations-DC Motors
// Example 4-20

clear; clc; close; // Clear the work space and console.

// Given data
SR = 0.1 ; // Given percent speed regulation 10% of a shunt motor 
omega_f1 = 60 * %pi ; // Full-load speed in rad/s

// Calculations
omega_n1 = omega_f1 * ( 1 + SR ); // No-load speed in rad/s

S = omega_n1 * ( 1 / ( 2 * %pi )) * ( 60 / 1 ); // No-load speed in rpm 

// Display the results
disp("Example 4-20 Solution : ");
printf(" \n a: omega_n1 = %.2f \n ", omega_n1);
printf(" \n b: S = %d rpm ", S );
