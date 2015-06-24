// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 9: POLYPHASE INDUCTION (ASYNCHRONOUS) DYNAMOS
// Example 9-1

clear; clc; close; // Clear the work space and console.

// Given data
phase = 3 ; // Number of phases
n = 3 ; // Slots per pole per phase
f = 60 ; // Line frequency in Hz

// Calculations
// case a
P = 2 * n ; // Number of poles produced
Total_slots = n * P * phase ; // Total number of slots on the stator

// case b
S_b = (120*f)/P ; // Speed in rpm of the rotating magnetic field

// case c
f_c = 50 ; // Changed line frequency in Hz
S_c = (120*f_c)/P ; // Speed in rpm of the rotating magnetic field

// Display the results
disp("Example 9-1 Solution : ");
printf(" \n a: P = %d poles \n    Total slots = %d slots \n", P ,Total_slots );

printf(" \n b: S = %d rpm  @ f = %d Hz \n ", S_b , f );

printf(" \n c: S = %d rpm  @ f = %d Hz ", S_c ,f_c );
