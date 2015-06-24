// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-5

clear; clc; close; // Clear the work space and console.

// Given data
P = 100 ; // Power rating of the single channel power amplifier in W
Z_p = 3200 ; // Output impedance in ohm of the single channel power amplifier
N_p = 1500 ; // Number of primary turns in a tapped impedance-matching transformer
Z_L1 = 8 ; // Amplifier output in ohm using a tapped impedance-matching transformer
Z_L2 = 4 ; // Amplifier output in ohm using a tapped impedance-matching transformer

// Calculations
// case a
alpha = sqrt(Z_p/Z_L1) ; // Transformation ratio
N_2 = N_p / alpha ; // Total number of secondary turns to match 8 ohm speaker

// case b
// subscript b for alpha indicates case b
alpha_b = sqrt(Z_p/Z_L2) ; // Transformation ratio
N_1 = N_p / alpha_b ; // Number of primary turns to match 4 ohm speaker

// case c
turns_difference = N_2 - N_1 ; // Difference in secondary and primary turns
// subscript c for alpha indicates case c
alpha_c = (1500/22); // Transformation ratio
Z_L = Z_p / (alpha_c)^2 ; // Impedance that must be connected between 4 ohm and
// 8 ohm terminals to reflect a primary impedance of 3.2 kilo-ohm

// Display the results
disp("Example 14-5 Solution : ");

printf(" \n a: Transformation ratio : \n    α = %d \n ",alpha );
printf(" \n    Total number of secondary turns to match 8 ohm speaker : ");
printf(" \n    N_2 = %d t \n ",N_2 );

printf(" \n b: Transformation ratio : \n    α = %.3f \n ",alpha_b );
printf(" \n    Number of primary turns to match 4 ohm speaker : ");
printf(" \n    N_1 = %d t \n ",N_1 );

printf(" \n c: Difference in secondary and primary turns : ");
printf(" \n    N_2 - N_1 = %.f t \n ",turns_difference );
printf(" \n    Impedance that must be connected between 4 ohm and 8 ohm ");
printf(" \n    terminals to reflect a primary impedance of 3.2 kilo-ohm : ");
printf(" \n    Z_L = %.2f ohm ",Z_L );
