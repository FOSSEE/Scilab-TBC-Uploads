// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 2: Dynamo Construction and Windings
// Example 2-7

clear; clc; close; // Clear the work space and console.

// Given data
slots = 72; // No. of slots
P = 6; // No. of poles
phase =3; // three phase stator armature
N_c = 20; // Number of turns per coil
pitch = 5 / 6;
phi = 4.8e+6; // flux per pole in lines
S = 1200; // Rotor speed

// Calculations
f = ( P * S )/ 120; // Frequency of rotor

E_g_percoil = 4.44 * phi * N_c * f *10 ^ -8; // Generated effective voltage
// per coil of a full pitch coil

N_p = ( slots / phase ) * N_c; // Total number of turns per phase

n = slots / ( phase * P ); // No. os slots per pole per phase

alpha = ( P * 180 ) / slots; // No. of electrical degrees between adjacent slots

k_d = sind( n * alpha / 2 ) / ( n * sind( alpha / 2 ) ); // Distribution factor

span = pitch * 180; // Span of the coil in electrical degrees

k_p = sind( span / 2 ); // Pitch factor

E_gp = 4.44 * phi * N_p * f * k_p * k_d * 10 ^ -8; // Total generated voltage
// per phase considering kp and kd

// Display the result
disp("Example 2-7 Solution : ")
printf("\n a: Eg/coil = %.2f V/coil", E_g_percoil );
printf("\n b: Np = %d turns/phase ", N_p );
printf("\n c: kd = %.3f ", k_d );
printf("\n d: kp = %.3f ", k_p );
printf("\n e: Egp = %.2f V/phase ", E_gp );
