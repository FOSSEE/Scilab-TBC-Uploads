// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 4: DC Dynamo Torque Relations-DC Motors
// Example 4-21

clear; clc; close; // Clear the work space and console.

// Given data
S_int = 1603 ; // Internal rated speed in rpm (Ex.4-16)
S_ext = 1250 ; // External rated speed in rpm (Ex.4-16)
hp_int = 14.3 ; // Internal horsepower
hp_ext = 10 ; // External horsepower

// Calculations
T_int = ( hp_int * 5252 ) / S_int ; // Internal torque in lb-ft

T_ext = ( hp_ext * 5252 ) / S_ext ; // External torque in lb-ft

// Display the results
disp("Example 4-21 Solution : ");
printf(" \n a: T_int = %.2f lb-ft \n ", T_int );
printf(" \n b: T_ext = %.2f lb-ft \n ", T_ext );
printf(" \n c: Internal horsepower is developed as a result of electromagnetic");
printf(" \n    torque produced by energy conversion. Some of the mechanical energy");
printf(" \n    is used internally to overcome mechanical losses of the motor,");
printf(" \n    reducing the torque available at its shaft to perform work.");
