// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 11: SPECIALIZED DYNAMOS
// Example 11-5

clear; clc; close; // Clear the work space and console.

// Given data
v_s = 12 ; // Synchronous velocity in meter/second
v = 10 ; // Secondary sheet in Ex.11-4 moves at a linear velocity in m/s

// Calculation
s = (v_s - v)/v_s ; // Slip of the DSLIM

// Display the result
disp("Example 11-5 Solution : ");disp("From Eq.(11-5)")
printf(" \n Slip of the DSLIM : \n s = %.3f  ",s );
