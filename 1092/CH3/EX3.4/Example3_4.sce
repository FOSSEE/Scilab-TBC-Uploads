// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 3: DC Dynamo Voltage Relations - DC Generators
// Example 3-4

clear; clc; close; // Clear the work space and console.

// Given data
S_final = 1200; // Speed of th generator in rpm
E_orig_a = 64.3; // Armature voltage of the generator  in V for case a
E_orig_b = 82.9; // Armature voltage of the generator  in V for case b
E_orig_c = 162.3; // Armature voltage of the generator  in V for case c

S_orig_a = 1205; // Varied Speed of the generator in rpm for case a
S_orig_b = 1194; // Varied Speed of the generator in rpm for case b
S_orig_c = 1202; // Varied Speed of the generator in rpm for case c

// Calculations
E_1 = E_orig_a * ( S_final / S_orig_a ); // No- load voltage of the generator 
// generator  in V for case a
E_2 = E_orig_b * ( S_final / S_orig_b ); // No- load voltage of the generator 
// generator  in V for case b
E_3 = E_orig_c * ( S_final / S_orig_c ); // No- load voltage of the generator 
// generator  in V for case c

// Display the results
disp("Example 3-4 Solution : ")
printf("\n a: E1 = %.1f V at %d rpm ", E_1, S_final );
printf("\n b: E2 = %.1f V at %d rpm ", E_2, S_final );
printf("\n c: E3 = %.1f V at %d rpm ", E_3, S_final );
