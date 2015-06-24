// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 1: Electromechanical Fundamentals
// Example 1-2

clear; clc; close; // Clear the work space and console.

// Given data
l = 18; // l = length of the conductor in inches
B = 50000; // B = uniform magnetic field in lines/sq-inches
d = 720; // d = distance travelled by conductor in inches
t = 1; // t =time taken for the conductor to  move in second

// Calculations
v = d/t; // v = velocity in inches/second with which the conductor moves

// part a
e = B * l * v * 10 ^ -8; // e = instantaneous induced EMF in volt
// part b
A = d * l; // Area swept by the conductor while moving
phi = B * A; // phi = uniform magnetic field 
E = ( phi / t ) * 10 ^ -8; // E = average induced EMF

// Display the result
disp("Example 1-2 Solution : ");

printf(" \n a : e = %.2f V ", e);
printf(" \n b : E = %.2f V ", E);
