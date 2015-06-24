// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 4: DC Dynamo Torque Relations-DC Motors
// Example 4-14

clear; clc; close; // Clear the work space and console.

// Given data
// Cumulative DC compound motor acting as shunt motor
T_orig = 160 ; // Original torque developed in lb.ft
I_a_orig = 140 ; // Original armature current in A
phi_f_orig = 1.6e+6 ; // Original field flux in lines

// Reconnected as a cumulative DC compound motor
T_final_a = 190 ; // Final torque developed in lb.ft (case a)

// Calculations
phi_f = phi_f_orig * ( T_final_a / T_orig ) ; // Field flux in lines
percentage = ( phi_f / phi_f_orig ) * 100 - 100 ; // percentage increase in flux

phi_f_final = 1.1 * phi_f ; // 10% increase in load causes 10% increase in flux
I_a_b = 154 ; // Final armature current in A (case b)
T_f = T_final_a * ( I_a_b / I_a_orig ) * ( phi_f_final / phi_f ) ; 
// Final torque developed

// Display the results
disp(" Example 4-14 Solution : ");
printf(" \n a: phi_f = %.1e lines \n ", phi_f );
printf(" \n    Percentage of flux increase = %.1f percent \n ", percentage );

printf(" \n b: The final field flux is 1.1 * 1.9 * 10 ^ 6 lines " );
printf(" \n    (due to the 10 percent increase in load).The final torque is\n");
printf(" \n    T_f = %.1f lb-ft ", T_f );
