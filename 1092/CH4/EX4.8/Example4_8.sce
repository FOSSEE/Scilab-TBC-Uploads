// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 4: DC Dynamo Torque Relations-DC Motors
// Example 4-8

clear; clc; close; // Clear the work space and console.

// Given data
V_a = 120 ; // Rated terminal voltage of the DC motor in volt
R_a = 0.2 ; // Armature circuit resistance in ohm
R_sh = 60 ; // Shunt field resistance in ohm
I_l = 40 ; // Line current in A @ full load
BD = 3 ; //  Brush voltage drop in volt
S_orig = 1800 ; // Rated full-load speed in rpm

// Calculations
I_f = V_a / R_sh ; // Field current in A
I_a = I_l - I_f ; // Armature current @ full load
E_c_orig = V_a - ( I_a * R_a + BD ) ; // Back EMF @ full load

I_a_a = I_a / 2 ; // Armature current @ half load
E_c_a = V_a - ( I_a_a * R_a + BD ) ; // Back EMF @ half load
S_a = S_orig * ( E_c_a / E_c_orig ) ; // Speed @ full load

I_a_b = I_a * ( 5 / 4 ) ; // Armature current @ 125% overload
E_c_b = V_a - ( I_a_b * R_a + BD ) ; // Back EMF @ 125% overload
S_b = S_orig * ( E_c_b / E_c_orig ) ; // Speed @ 125% overload

// Display the result
disp("Example 4-8 Solution : ");

printf(" \n a : At full load ");
printf(" \n     S = %.1f rpm " , S_a );

printf(" \n b : At 125 percenytoverload ");
printf(" \n     S = %.1f rpm " , S_b );
