// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 1: Electromechanical Fundamentals
// Example 1-13

clear; clc; close; // Clear the work space and console.

// Given data
R_a = 0.25; // Armature resistance
V_a = 125; // dc bus voltage
I_a = 60; // Armature current

// Calculations
E_c = V_a - I_a * R_a; // Counter EMF generated in the armature conductors of motor

// Display the result
disp("Example 1-13 Solution : ");
printf("\n Ec = % d V ", E_c );
