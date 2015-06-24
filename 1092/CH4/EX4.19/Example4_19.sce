// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 4: DC Dynamo Torque Relations-DC Motors
// Example 4-19

clear; clc; close; // Clear the work space and console.

// Given data
// From the calculations of Ex.4-16 , Ex.4-17 , Ex.4-18 we get no-load and
// full-load speeds as follows
S_n1 = 1810 ; // No-load speed in rpm (Ex.4-16)
S_f1 = 1603 ; // Full-load speed in rpm (Ex.4-16)

S_n2 = 1806 ; // No-load speed in rpm (Ex.4-17)
S_f2 = 1231 ; // Full-load speed in rpm (Ex.4-17)

S_n3 = 1311 ; // No-load speed in rpm (Ex.4-18)
S_f3 = 505 ; // Full-load speed in rpm (Ex.4-18)

// Calculations
SR_1 = ( S_n1 - S_f1 ) / S_f1 * 100 ; // Speed regulation for shunt motor

SR_2 = ( S_n2 - S_f2 ) / S_f2 * 100 ; // Speed regulation for compound motor

SR_3 = ( S_n3 - S_f3 ) / S_f3 * 100 ; // Speed regulation for series motor

// Display the results
disp("Example 4-19 Solution : ");
printf(" \n a: SR(shunt) = %.1f percent \n ", SR_1 );
printf(" \n b: SR(compound) = %.1f percent \n ", SR_2 );
printf(" \n c: SR(series) = %.1f percent \n ", SR_3 );
