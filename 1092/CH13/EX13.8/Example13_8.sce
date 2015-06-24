// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 13: RATINGS,SELECTION,AND MAINTENANCE OF ELECTRIC MACHINERY
// Example 13-8

clear; clc; close; // Clear the work space and console.

// Given data
V = 120 ; // Rated output voltage in volt of separately excited dc generator
I = 100 ; // Rated output current in A of separately excited dc generator
R = 0.1 ; // Armature resistance in ohm

// Calculations
// case a
V_b = V ; // base voltage in volt

// case b
I_b = I ; // base current in A

// case c
R_b = V_b / I_b ; // base resistance in ohm

// case d
R_pu = R / R_b ; // per-unit value of armature resistance in p.u

// Display the results
disp("Example 13-8 Solution : ");

printf(" \n a: Base voltage \n    V_b = %d V \n ", V_b );

printf(" \n b: Base current \n    I_b = %d A \n ", I_b );

printf(" \n c: Base resistance \n    R_b = %.1f ohm \n ", R_b );

printf(" \n d: Per-unit value of armature resistance\n    R_p.u = %.3f p.u \n ", R_pu );
