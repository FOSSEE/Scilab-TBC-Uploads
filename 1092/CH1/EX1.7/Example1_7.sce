// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 1: Electromechanical Fundamentals
// Example 1-7

clear; clc; close; // Clear the work space and console.

// Given data
N = 1; // no. of turns
phi = 6.48 * 10 ^ 8; // Magnetic flux in lines
s = 30 / 60; // No. of revolution of the coil per second( refer section 1-14)

// Calculations
E_av_per_coil = 4 * phi * N * s * 10 ^ -8; // average voltage per coil
// for above equation refer section 1-14

E_av_per_coil_side = E_av_per_coil * ( 1 / 2); // average voltage per conductor

// Display the results
disp("Example 1-7 Solution : ")
printf(" \n Eav/coil = % .2f V/coil ", E_av_per_coil);
printf(" \n Eav/coil side = % .2f V/conductor ", E_av_per_coil_side);
