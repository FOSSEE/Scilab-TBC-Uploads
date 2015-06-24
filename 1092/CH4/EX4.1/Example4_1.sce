// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 4: DC Dynamo Torque Relations-DC Motors
// Example 4-1

clear; clc; close; // Clear the work space and console.

// Given data
d = 0.5; // diameter of the coil in m
l = 0.6; // axial length of the coil in m
B = 0.4; // flux density in T
I = 25; // current carried by the coil in A
theta = 60; // angle between the useful force & the interpolar ref axis in deg

// Calculations
F = B * I * l; // force developed on each coil side in  N
f = F * sind(theta); // force developed at the instant the coil lies at an angle
// of 60 w.r.t the interpolar  ref axis
r = d / 2; // radius of the coil in m
T_c = f * r; // torque developed in N-m
T_c1 = T_c * 0.2248 * 3.281 ; // torque developed in lb-ft by first method
T_c2 = T_c * 0.737562 ; // torque developed in lb-ft by second method

// Display the results
disp("Example 4-1 Solution : ")
printf("\n a : F = %d N ", F );
printf("\n b : f = %.2f N ", f );
printf("\n c : Tc = %.2f N-m ", T_c );
printf("\n d : 1.3 N-m * 0.2248 lb/N * 3.281 ft/m = %.2f lb-ft ", T_c1 );
printf("\n     1.3 N-m * 0.737562 lb.ft/N.m = %.2f lb-ft ", T_c2 );
