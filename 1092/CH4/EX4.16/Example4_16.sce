// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 4: DC Dynamo Torque Relations-DC Motors
// Example 4-16

clear; clc; close; // Clear the work space and console.

// Given data
V_a = 230 ; // Rated armature voltage in volt
P = 10 ; // Rated power in hp
S = 1250 ; // Rated speed in rpm
R_A = 0.25 ; // Armature resistance in ohm
R_p = 0.25 ; // Interpolar resistance
BD = 5 ; // Brush voltage drop in volt
R_s = 0.15 ; // Series field resistance in ohm
R_sh = 230 ; // Shunt field resistance in ohm

// shunt connection
I_l = 54 ; // Line current in A at rated load 
I_ol = 4 ; // No-load line current in A
S_o = 1810 ; // No-load speed in rpm

// Calculations
R_a = R_A + R_p ; // Effective armature resistance in ohm
I_f = V_a / R_sh ; // Field current in A ( Shunt connection )
I_a = I_ol - I_f ; // Armature current in A

E_c_o = V_a - ( I_a * R_a + BD ); // No-load BACK EMF in volt
E_c_full_load = V_a - ( I_l * R_a + BD ); // No-load BACK EMF in volt at full-load

S_r = S_o * ( E_c_full_load / E_c_o ); // Speed at rated load

P_d = E_c_full_load * I_l ; // Internal power in watts
hp = P_d / 746 ; // Internal horse power

// Display the results
disp("Example 4-16 Solution : ");
printf(" \n a: S_r = %d rpm\n ", S_r );
printf(" \n b: P_d = %d W ", P_d );
printf(" \n    hp = %.1f hp ", hp );
