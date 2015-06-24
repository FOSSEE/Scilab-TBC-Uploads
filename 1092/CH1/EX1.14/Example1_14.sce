// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 1: Electromechanical Fundamentals
// Example 1-13

clear; clc; close; // Clear the work space and console.

// Given data
V_a = 110; // voltage across armature
I_a = 60; // Armature current
R_a = 0.25; // Armature resistance
P = 6; // No. of poles
a = 12; // No. of paths
Z = 720; // No. of armature conductors
S = 1800; // Speed in rpm

// Calculations
E_g = V_a + I_a * R_a; // Generated EMF in the armature
 
phi_lines = ( E_g * ( 60 * a ) ) / ( ( Z * S * P ) * 10 ^ -8 );
// Flux per pole in lines

phi_Wb = phi_lines * 10 ^ -8; // Flux per pole in webers

// Display the results
disp("Example 1-14 Solution : ");

printf("\n a : Eg = %d V ", E_g );

printf("\n b : phi = %f lines/pole ", phi_lines );

printf("\n c : phi = %f Wb ", phi_Wb );
