// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 9: POLYPHASE INDUCTION (ASYNCHRONOUS) DYNAMOS
// Example 9-2

clear; clc; close; // Clear the work space and console.

// Given data

s_a = 5*(1/100); // Slip (case a)
s_b = 7*(1/100); // Slip (case b)

// Given data and calculated values from Ex.9-1
f_a = 60 ; // Line frequency in Hz (case a)
f_b = 50 ; // Line frequency in Hz (case b)
S_a = 1200 ; // Speed in rpm of the rotating magnetic field (case a)
S_b = 1000 ; // Speed in rpm of the rotating magnetic field (case b)

// Calculations

// case a
S_r_a = S_a * ( 1 - s_a ); // Rotor speed in rpm when slip is 5% (case a)

// case b
S_r_b = S_b * ( 1 - s_b ); // Rotor speed in rpm when slip is 7% (case b)

// Display the results
disp("Example 9-2 Solution : ");

printf(" \n a: S_r = %.f rpm  @ s = %.2f  \n ", S_r_a ,s_a );

printf(" \n b: S_r = %.f rpm  @ s = %.2f  ", S_r_b ,s_b );
