// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 8: AC DYNAMO TORQUE RELATIONS - SYNCHRONOUS MOTORS
// Example 8-11

clear; clc; close; // Clear the work space and console.

// Given data
S_conjugate = 1000 ; // Apparent complex power in kVA
cos_theta = 0.6 ; // lagging PF
sin_theta = sqrt( 1 - (cos_theta)^2 );

// Calculations
// case a
P_o = S_conjugate * cos_theta ; // Active power dissipated by the load in kW

// case b
jQ_o = S_conjugate * sin_theta ; // Inductive reactive quadrature power - 
// - drawn from and returned to the supply

// Display the results

disp("Example 8-11 Solution : ");
printf(" \n a: Active power \n    P_o = %d kW \n ", P_o );

printf(" \n b: Inductive reactive quadrature power \n    +jQ_o in kvar =  \n");disp(%i*jQ_o);

printf(" \n c: The original power triangle is shown in Fig.8-26a.");
