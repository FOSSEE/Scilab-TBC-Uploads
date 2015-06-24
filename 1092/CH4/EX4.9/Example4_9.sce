// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 4: DC Dynamo Torque Relations-DC Motors
// Example 4-9

clear; clc; close; // Clear the work space and console.

// Given data
I_l_orig = 40; // original Line current in A
I_l_final = 66; // Final Line current in A

phi_orig = 1; 
// field flux is increased by 12% so EMF produced and terminal 
// voltage will also increase by 12%
phi_final = 1.12;

V_a = 120;
R_sh_orig = 60; // Original Field ckt resistance in ohm
R_sh_final = 50 ; // Decreased final field ckt resistance in ohm

R_a = 0.2; // Armature resistance in ohm
BD = 3; // Brush voltage drop in volt
S_orig = 1800; // Rated full-load speed

// Calculations
I_f_orig = V_a / R_sh_orig ; // Original Field current in A
I_a_orig = I_l_orig - I_f_orig ; // Original Armature current @ full load
E_c_orig = V_a - ( I_a_orig * R_a + BD ) ; // Back EMF @ full load

I_f_final = V_a / R_sh_final ; // Final field current in A
I_a_final = I_l_final - I_f_final ; // Final Armature current in A
E_c_final = V_a - ( I_a_final * R_a + BD ) ; // Final EMF induced
S = S_orig * ( E_c_final / E_c_orig ) * ( phi_orig / phi_final ) ; 
// Final speed of the motor

// Display the result
disp("Example 4-9 Solution : ");
printf(" \n S = %.1f rpm ", S ); 
