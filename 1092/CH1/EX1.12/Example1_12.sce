// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 1: Electromechanical Fundamentals
// Example 1-12

clear; clc; close; // Clear the work space and console.

// Given data
l = 0.5; // length of the conductor
A = 0.1 * 0.2; // area of the pole face
phi = 0.5 * 10 ^ -3; // magnetic flux in weber
I = 10; //Current in the conductor
theta = 75; // angle between the conductor and the flux density B

// Calculations
B = ( phi ) / ( A ); // Flux density 

F = B * I * l * sind(theta); // Magnitude of force

// Display the result
disp("Example 1-12 Solution : ");

printf("\n F =% f N in a vertically upward direction ", F );

