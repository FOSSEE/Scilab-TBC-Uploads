// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 3: DC Dynamo Voltage Relations - DC Generators
// Example 3-6

clear; clc; close; // Clear the work space and console.

// Given data
V_n1 = 135; // No load voltage of the shunt generator in V
V_f1 = 125; // Full load voltage of the shunt generator in V

// Calculation
VR = ( V_n1 - V_f1 ) / V_f1 * 100; // Percentage voltage regulation

// Display the result
disp("Example 3-6 Solution : ")
printf(" \n VR = %d percent ", VR );


