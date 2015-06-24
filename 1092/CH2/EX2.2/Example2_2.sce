// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 2: Dynamo Construction and Windings
// Example 2-2

clear; clc; close; // Clear the work space and console.

// Given data
P = 14; // No. of poles
phi = 4.2e6; // Flux per pole
S = 60; // Generator speed
coils = 420; // No. of coils
turns_per_coil = 20;
conductors_per_turn = 2;
a_lap = 42; // No. of parallel paths in the armature for a lap winding
a_wave = 6; // No. of parallel paths in the armature for a wave winding

// Calculations
Z = coils * turns_per_coil * conductors_per_turn; // No. of conductors
E_g_lap = (( phi * Z * S * P ) / ( 60 * a_lap )) * 10 ^ -8; // Generated EMF for
// lap winding ( Eq 1-5a)
E_g_wave = ( phi * Z * S * P ) / ( 60 * a_wave ) * 10 ^ -8; // Generated EMF for
// wave winding ( Eq 1-5a)

// Display the result
disp("Example 2-2 Solution : ");

printf("\n a: Eg = %0.1f V ", E_g_lap);
printf("\n b: Eg = %0.1f V ", E_g_wave);
