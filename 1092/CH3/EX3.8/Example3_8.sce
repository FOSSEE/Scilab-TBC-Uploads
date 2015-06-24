// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 3: DC Dynamo Voltage Relations - DC Generators
// Example 3-8

clear; clc; close; // Clear the work space and console.

// Given data
N_f = 1000; // Shunt field winding turns
N_s = 4; // Series field winding turns
I_f = 0.2; // Field current in A
I_a = 80; // Full load armature current in A
R_s =0.05; // Series field resistance in ohm

// Calculations
deba_I_f_N_f = I_f * N_f; 
I_s_N_s = deba_I_f_N_f; // Series field ampere-turns
I_s =( I_s_N_s ) / N_s; // Desired current in A in the series field required to
// produce voltage rise
I_d = I_a - I_s; // Diverter current in A
R_d = ( I_s * R_s ) / I_d; // Diverter resistance in ohm

// Display the result
disp("Example 3-8 Solution : ")
printf("\n a: IsNs = %d At ", I_s_N_s );
printf("\n b: Rd = %.4f ohm ", R_d );

