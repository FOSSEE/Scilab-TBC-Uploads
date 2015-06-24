// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 4: DC Dynamo Torque Relations-DC Motors
// Example 4-4

clear; clc; close; // Clear the work space and console.

// Given data
slots = 120 ; // No. of armature slots
conductors_per_slot = 6 ; 
B = 60000 ; // Flux density in lines/sq.inches
d = 28 ; // diameter of the armature
l = 14 ; // axial length of the coil in inches
A = 4 ; // No. of parallel paths
span = 0.72 ; // Pole arcs span 72% of the armature surface
I = 133.5 ; // Armature current in A

// Calculations
Z_Ta = slots * conductors_per_slot * span ; // No. of armature conductors
F_t = ( B * I * l )/ ( 1.13 * 10 ^ 7  * A ) * Z_Ta ; // Force developed in lb
r = ( d / 2 ) / 12 ; // radius of the armature in feet
T = F_t * r ; // Tital torque developed

// Display the result
disp("Example 4-4 Solution : ")
printf(" \n T = %d lb-ft", T );

