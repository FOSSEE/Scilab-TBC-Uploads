// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 11: SPECIALIZED DYNAMOS
// Example 11-2

clear; clc; close; // Clear the work space and console.

// Given data
// VR stepper motor
n = 3 ; // Number of stacks or phases
P_a = 16 ; // Number of rotor teeth (subscript a indicates case a)
// PM stepper
P_b = 24 ; // Number of poles (subscript b indicates case b)

// Calculations
// case a
alpha_a = 360 / (n*P_a); // Stepping angle in degrees per step 

alpha_b = 360 / (n*P_b); // Stepping angle in degrees per step 

// Display the results
disp("Example 11-2 Solution : ");
printf(" \n a: alpha α = %.1f degrees/step \n ", alpha_a );

printf(" \n b: alpha α = %.1f degrees/step \n ", alpha_b );
