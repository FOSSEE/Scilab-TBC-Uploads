// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 4: DC Dynamo Torque Relations-DC Motors
// Example 4-7

clear; clc; close; // Clear the work space and console.

// Given data
R_a = 0.25 ; // Armature resistance in ohm
BD = 3 ; // Brush contact drop in volt
V = 120 ; // Applied voltage in volt
E_a = 110 ; // EMF in volt at a given load 
E_b = 105 ; // EMF in volt due to application of extra load 

// Calculations
I_a_a = ( V - ( E_a + BD ) ) / R_a ; // Armature current for E_a
I_a_b = ( V - ( E_b + BD ) ) / R_a ; // Armature current for E_b
del_E = ( ( E_a - E_b ) / E_a ) * 100 ; // % change in counter EMF
del_I = ( ( I_a_a - I_a_b ) / I_a_a ) * 100 ; // % change in armature current

// Display the result
disp("Example 4-7 Solution : ")
printf("\n a : Ia = %d A " , I_a_a );
printf("\n b : At increased load \n     Ia = %d A " , I_a_b );
printf("\n c : del_Ec = %.2f percent \n     del_Ia = %.2f percent " , del_E , del_I);
