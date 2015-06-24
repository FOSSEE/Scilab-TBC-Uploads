// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 1: Electromechanical Fundamentals
// Example 1-11

clear; clc; close; // Clear the work space and console.

// Given data
l = 0.5; // length of the conductor
A = 0.1 * 0.2; // area of the pole face
phi = 0.5 * 10 ^ -3; // magnetic flux in weber
I = 10; //Current in the conductor

// Calculations
B = ( phi ) / ( A ); // Flux density 

F = B * I * l; // Magnitude of force

// Display the result
disp("Example 1-11 Solution : ");

printf("\n a : F = % .3f N", F );

printf("\n b : The force on the conductor is % .3f N in an upward direction as shown in fig 1-13c ", F );
