// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 3: DC Dynamo Voltage Relations - DC Generators
// Example 3-3

clear; clc; close; // Clear the work space and console.

// Given data
E_orig = 150; // Armature voltage of the generator  in V
S_orig = 1800; // Speed of the generator in rpm 
S_final_a =2000; // Increased Speed of the generator in rpm for case a
S_final_b =1600; // Increased Speed of the generator in rpm for case b

// Calculations
E_final_a = E_orig * ( S_final_a / S_orig ); // No- load voltage of the generator 
// generator  in V for case a
E_final_b = E_orig * ( S_final_b / S_orig ); // No- load voltage of the generator 
// generator  in V for case b

// Display the results
disp("Example 3-3 Solution : ")
printf("\n a: Efinal = %.1f V ", E_final_a );
printf("\n b: Efinal = %.1f V ", E_final_b );
