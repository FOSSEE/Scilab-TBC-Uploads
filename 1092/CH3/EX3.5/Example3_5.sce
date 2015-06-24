// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 3: DC Dynamo Voltage Relations - DC Generators
// Example 3-5

clear; clc; close; // Clear the work space and console.

// Given data
V = 125; // Rated voltage of the shunt generator in V
R_a = 0.15; // Armature resistance in ohm
V_a = 0; // Shunt generator is loaded progressively until the terminal voltage
// across the load is zero volt
I_1 = 96; // Load current in A
I_f = 4; // Field current in A

// Calculations
I_a = I_f + I_1; // Armature current in A
E_g = V_a + I_a * R_a ; // Voltage generated in the armature in V

// Display the results
disp("Example 3-5 Solution : ")
printf("\n Ia = %d A ", I_a );
printf("\n Eg = %d V ", E_g );

