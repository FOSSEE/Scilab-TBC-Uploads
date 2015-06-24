// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 1: Electromechanical Fundamentals
// Example 1-5

clear; clc; close; // Clear the work space and console.

// Given data
no_of_conductors = 40;
A = 2; // A = Parallel paths
path = A;
flux_per_pole = 6.48 * 10 ^ 8; // flux lines 
S = 30; // S = Speed of the prime mover in rpm
R_per_path = 0.01; // Resistance per path
I = 10; // Current carried by each condutcor
P = 2; // No. of poles

// Calculations
total_flux = P * flux_per_pole; // Total flux linked in one revolution
t = ( 1 / 30 ) * ( 60 ); // time for one revolution

e_av_per_conductor = ( total_flux / t ) * 10^-8; // Average voltage generated 
// per conductor
E_path = ( e_av_per_conductor ) * ( no_of_conductors / path ); // Average 
//voltage  generated per path

E_g = E_path; // Generated armature voltage

I_a =( I / path ) * ( 2 * path ); // Armature current delivered to an external
// load

R_a = ( R_per_path) / path * 20; // Armature resistance

V_t = E_g - I_a * R_a; // Terminal voltage of generator

P = V_t * I_a; // Genrator power rating

// Display the results
disp("Example 1-5 Solution");

printf(" \n a : E/path = %.2f V/path ", E_path );
printf(" \n b : Eg = %.2f V ", E_g );
printf(" \n c : Ia = %.2f A ", I_a );
printf(" \n d : Ra = %.2f ohm ", R_a );
printf(" \n e : Vt = %.2f V ", V_t );
printf(" \n f : P = %.2f W ", P );




