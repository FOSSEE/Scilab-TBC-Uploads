// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 4: DC Dynamo Torque Relations-DC Motors
// Example 4-5

clear; clc; close; // Clear the work space and console.

// Given data
slots = 120 ; // No. of armature slots
conductors_per_slot = 6 ; 
B = 60000 ; // Flux density in lines/sq.inches
d = 28 ; // diameter of the armature
l = 14 ; // axial length of the coil in inches
A = 4 ; // No. of parallel paths
span = 0.72 ; // Pole arcs span 72% of the armature surface
T_a = 1500 ; // total armature torque in lb-ft

// Calculation
Z = slots * conductors_per_slot ; // No. of armature conductors
r = ( d / 2 ) / 12 ; // radius of the armature in feet
I_a = ( T_a * A * 1.13e7 ) / ( B * l * Z * r * span ) ; //Armature current in A

// Display the result
disp("Example 4-5 Solution : ")
printf(" \n Ia = %.1f A ", I_a );
