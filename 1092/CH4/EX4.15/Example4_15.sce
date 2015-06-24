// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 4: DC Dynamo Torque Relations-DC Motors
// Example 4-15

clear; clc; close; // Clear the work space and console.

// Given data
I_a_orig = 25 ; // Original armature current in A
I_a_final = 30 ; // Final armature current in A
T_orig = 90 ; // Original torque developed in lb.ft
phi_orig = 1.0 ; // Original flux
phi_final = 1.1 ; // Final flux

// Calculations
T_a = T_orig * ( I_a_final / I_a_orig ) ^ 2 ; // Final torque developed if field
// is unsaturated
T_b = T_orig * ( I_a_final / I_a_orig ) * ( phi_final / phi_orig ) ; 
// Final torque developed when Ia rises to 30 A and flux by 10%

// Display the results
disp(" Example 4-15 Solution : " );
printf(" \n a: T = %.1f lb-ft \n ", T_a );
printf(" \n b: T = %.1f lb-ft ", T_b );
