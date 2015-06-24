// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 1: Electromechanical Fundamentals
// Example 1-6

clear; clc; close; // Clear the work space and console.

// Given data
no_of_conductors = 40;
I = 10; // Current carried by each condutcor
R_per_path = 0.01; // Resistance per path
flux_per_pole = 6.48 * 10 ^ 8; // flux lines 
P = 2; // No. of poles
path = 4; // No. of parallel paths
total_flux = P * flux_per_pole; // Total flux linked in one revolution
t = 2; // time for one revolution
e_av_per_conductor = 6.48; // Average voltage generated per conductor

// Calculations
E_path = ( e_av_per_conductor ) * ( no_of_conductors / path ); // Average 
//voltage  generated per path
 
E_g = E_path; // Generated armature voltage

I_a =( I / path ) * ( 4 * path ); // Armature current delivered to an external
// load 

R_a = ( ( R_per_path) / path ) * 10; // Armature resistance

V_t = E_g - I_a * R_a; // Terminal voltage of generator

P = V_t * I_a; // Genrator power rating

// Display the results
disp("Example 1-6 Solution");

printf(" \n a : E/path = %.2f V/path ", E_path );
printf(" \n b : Eg = %.2f V ", E_g );
printf(" \n c : Ia = %.2f A ", I_a );
printf(" \n d : Ra = %.3f ohm ", R_a );
printf(" \n e : Vt = %.2f V ", V_t );
printf(" \n f : P = %.2f W ", P );
