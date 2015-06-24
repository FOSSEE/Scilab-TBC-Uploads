// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 4: DC Dynamo Torque Relations-DC Motors
// Example 4-3

clear; clc; close; // Clear the work space and console.

// Given data
Z = 700 ; // no. of conductors
d = 24 ; // diameter of the armature of the dc motor in inches
l = 34 ; // axial length of the coil in inches
B = 50000 ; // Flux density in lines/sq.inches
I = 25 ; // Current carried by the coil in A

// Calculations
F_av = ( B * I * l * 10 ^ -7 ) / 1.13 * ( 700 * 0.7 ) ; // average force 
// developed on each coil side in  lb
r = d / 2; // radius of the coil in inches
T_av = F_av * ( r /12 ) ; // armature average torque in lb-ft

// Display the results
disp("Example 4-3 Solution : ")
printf("\n a : Fav = %.2f lb ", F_av );
printf("\n b : Tav = %.2f lb-ft ", T_av );
