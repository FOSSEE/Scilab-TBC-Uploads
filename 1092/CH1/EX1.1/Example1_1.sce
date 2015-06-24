// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 1: Electromechanical Fundamentals
// Example 1-1

clear; clc; close; // Clear the work space and console.

// Given data
t = 50e-3; // t = time in milli second
phi = 8 * 10 ^ 6; // phi = uniform magnetic field in maxwells

// Calculations
E_av = (phi / t) * 10 ^ -8; // E_av = average voltage generated in the conductor
// in volt 

// Display the result
disp("Example 1-1 Solution : ");
disp("Average voltage generated in the conductor is : ");
printf(" E_av = %.2f V", E_av);
