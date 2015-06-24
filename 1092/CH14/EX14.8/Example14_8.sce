// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-8

clear; clc; close; // Clear the work space and console.

// Given data
// power transformer
V = 20 ; // No-load voltage in volt
R_s = 18 ; // Internal resistance of the power amplifier in ohm
R_L = 8 ; // Load resistance in ohm(Speaker)

// Calculations
// case a
V_L = ( R_L / (R_L + R_s) )* V; // Load voltage in volt
P_L = (V_L)^2 / R_L ; // Power delivered in W to the speaker when connected 
// directly to the amplifier

// case b
alpha = sqrt(R_s/R_L); // Turns ratio of the transformer to maximize speaker power

// case c
V_2 = V / (2*alpha); // Secondary voltage in volt
P_L2 = (V_2)^2 / R_L ; // Maximum power delivered in W to the speaker using matching
// transformer of part b

// Display the results
disp("Example 14-8 Solution : ");

printf(" \n a; Load voltage :\n    V_L = %.2f V across the 8 Ω speaker\n ",V_L);
printf(" \n    Power delivered in W to the speaker when connected directly to the amplifier : ");
printf(" \n    P_L = %.2f W \n ", P_L );

printf(" \n b: Turns ratio of the transformer to maximize speaker power : ");
printf(" \n    α = %.1f \n ", alpha );

printf(" \n c: Secondary voltage :\n    V_2 = %f V \n ",V_2 );
printf(" \n    Maximum power delivered in W to the speaker using matching ");
printf(" \n    transformer of part b :\n    P_L = %f W ",P_L2 );
