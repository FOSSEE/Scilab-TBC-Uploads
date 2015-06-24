// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 1: Electromechanical Fundamentals
// Example 1-8

clear; clc; close; // Clear the work space and console.

// Given data
phi_lines = 6.48 * 10 ^ 8; // magnetic flux in lines 
N = 1; // no. of turns

// Calculations
phi = phi_lines * 10 ^ -8; // Magnetic flux in weber

omega = ( 30 ) * ( 2 * %pi ) * ( 1 / 60 ); // angular velocity in rad/s

E_av_per_coil = 0.63662 * omega * phi * N; // average voltage per coil
// for the above formula refer section 1-14 eqn (1-4b)

// Display the result
disp("Example 1-8 Solution : ");
printf("\n Eav/coil  = % 0.2f V/coil ", E_av_per_coil);
