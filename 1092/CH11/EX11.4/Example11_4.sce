// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 11: SPECIALIZED DYNAMOS
// Example 11-4

clear; clc; close; // Clear the work space and console.

// Given data
tou = 0.1 ; // Pole pitch of a double-sided primary LIM in meter
f = 60 ; // Frequency applied to the primary LIM in Hz

// Calculation
v_s = 2 * f * tou ; // Synchronous velocity in meter/second

// Display the result
disp("Example 11-4 Solution : ");
printf(" \n Synchronous velocity : \n v_s = %d m/s ", v_s );
