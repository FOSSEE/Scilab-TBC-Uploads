// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 2: Dynamo Construction and Windings
// Example 2-1

clear; clc; close; // Clear the work space and console.

// Given data
m = 3; // Multipicity of the armature
P = 14; // No. of poles

// Calculations
a_lap = m * P; // No. of parallel paths in the armature for a lap winding
a_wave = 2 * m; // No. of parallel paths in the armature for a wave winding

// Display the result
disp("Example 2-1 Solution : ");

printf("\n a: a = %d paths ", a_lap);
printf("\n b: a = %d paths ", a_wave);
