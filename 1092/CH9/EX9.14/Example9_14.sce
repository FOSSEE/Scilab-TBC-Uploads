// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 9: POLYPHASE INDUCTION (ASYNCHRONOUS) DYNAMOS
// Example 9-14

clear; clc; close; // Clear the work space and console.

// Given data
T_max = 17.75 ; // Maximum torque developed in lb-ft
s_max = 0.3 ; // Slip for which T_max occurs
s_a = 0.0333 ; // slip (case a)
s_b = 1.0 ; // slip (case b) 

// Calculations
// Subscript a in T indicates case a
T_a = T_max * ( 2 / ((s_max/s_a) + (s_a/s_max)) ); // Full-load torque in lb-ft

// Subscript b in T indicates case b
T_b = T_max * ( 2 / ((s_max/s_b) + (s_b/s_max)) ); // Starting torque in lb-ft

// Display the results
disp("Example 9-14 Solution : ");

printf(" \n a: Full-load torque at slip = %.4f \n    T = %.1f lb-ft\n",s_a,T_a);

printf(" \n b: Starting torque at slip = %.1f \n    T = %.2f lb-ft\n",s_b,T_b);
