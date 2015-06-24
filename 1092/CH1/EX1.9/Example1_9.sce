// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 1: Electromechanical Fundamentals
// Example 1-9

clear; clc; close; // Clear the work space and console.

// Given data
P = 2; // No. of poles
Z = 40; // no of conductors
a = 2; // a = Parallel paths
phi = 6.48 * 10 ^ 8; // magnetic flux
S = 30; // Speed of the prime mover

// Calculations 
E_g = ( ( phi * Z * S * P ) / ( 60 * a) ) * 10 ^ -8; // average voltage between 
// the brushes

// Display the result
disp("Example 1-9 Solution : ");
printf("\n Eg = %.2f V between the brushes ", E_g);
