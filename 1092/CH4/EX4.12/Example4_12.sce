// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 4: DC Dynamo Torque Relations-DC Motors
// Example 4-12

clear; clc; close; // Clear the work space and console.

// Given data
V_a = 120 ; // Rated terminal voltage of dc shunt notor in volt
R_a = 0.2 ; // Armature resistance in ohm
BD = 2 ; // Brush drop in volt
I_a = 75 ; // Full load armature current in A

// Calculations
I_st = ( V_a - BD ) / R_a ; // Current @ the instant of starting in A
percentage = I_st / I_a * 100 ; // Percentage at full load

// Display the results 
disp(" Example 4-12 Solution : ");
printf(" \n Ist = %d A ( Back EMF is zero )",I_st );
printf(" \n Percentage at full load = %d percent ", percentage );
