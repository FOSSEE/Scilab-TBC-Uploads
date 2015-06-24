// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 3: DC Dynamo Voltage Relations - DC Generators
// Example 3-7

clear; clc; close; // Clear the work space and console.

// Given data
VR = 0.105; // voltage regulation
V_f1 = 250; // Full load voltage of the shunt generator in V

// Calculation
V_n1 = V_f1 + ( V_f1 * VR ); // No-load voltage of the generator in V

// Display the result
disp("Example 3-7 Solution : ")
printf("\n Vn1 = %.1f V ", V_n1 );



