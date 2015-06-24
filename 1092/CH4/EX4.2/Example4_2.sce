// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 4: DC Dynamo Torque Relations-DC Motors
// Example 4-2

clear; clc; close; // Clear the work space and console.

// Given data
d = 18 ; // diameter of hte coil in inches
l = 24 ; // axial length of the coil in inches
B = 24000 ; // Flux density in lines/sq.inches
I = 26 ; // Current carried by the coil in A
theta = 60 ; // angle between the useful force & the interpolar ref axis in deg


// Calculations
F = ( B * I * l * 10 ^ -7 ) / 1.13 ; // force developed on each coil side in  lb
f = F * sind(theta); // force developed at the instant the coil lies at an angle
// of 60 w.r.t the interpolar  ref axis
r = d / 2; // radius of the coil in inches
T_c = f * ( r * 1 / 12); // torque developed in lb.ft/conductor

// Display the results
disp("Example 4-2 Solution : ")
printf("\n a : F = %.3f lb ", F );
printf("\n b : f = %.2f lb ", f );
printf("\n c : Tc = %.3f lb-ft/conductor ", T_c );
