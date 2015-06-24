// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 3: DC Dynamo Voltage Relations - DC Generators
// Example 3-10

clear; clc; close; // Clear the work space and console.

// Given data
kW= 50; // Power rating of the dynamo
V = 125; // Rated voltage in V
S = 1800; // Speed of the dynamo in rpm
I_f =20; // Exciting field current
Max_temp_rise = 25; // Maximum Temperature rise in degree celsius
I_l = 400; // Load Current in A
// INSULATION CLASS A
// COMPOUND WINDING 

// Display the result
disp("Example 3-10 Solution : ")
printf("\n a: Since the speed is reduced in half, we must reduce the kW rating in half. Consequently, the 25kW, 900 rpm dynamo has the same size. ");
printf("\n\n b: Since we have cut the speed in half but maintained the same kW rating, the dynamo has twice the size as the original.");
printf("\n\n c: Half the size. ");
printf("\n\n d: Same size. ");
