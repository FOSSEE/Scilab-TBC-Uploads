// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-6

clear; clc; close; // Clear the work space and console.

// Given data
P = 100 ; // Power rating of the single channel power amplifier in W
Z_L1 = 8 ; // Amplifier output in ohm using a tapped impedance-matching transformer
Z_L2 = 4 ; // Amplifier output in ohm using a tapped impedance-matching transformer
P_servo = 10 ; // Power rating of the servo motor in W
Z_servo = 0.7 ; // Impedance of the servo motor in ohm

// Calculations
root_Z_AB = sqrt(8) - sqrt(4);
Z_AB = (root_Z_AB)^2;

// Display the resulta
disp("Example 14-6 Solution : ");

printf(" \n Z_p = %dΩ*(N_p/N_1)^2 = %dΩ*(N_p/N_2)^2\n",Z_L2,Z_L1);
printf(" \n     = Z_AB * (N_p/(N_2 - N_1)^2 ) \n");
printf(" \n Dividing each of the three numerators by N_p^2 and taking the ");
printf(" \n square root of each term, we have\n");

printf(" \n √(Z_AB)/(N_2 - N_1) = √(4)/N_1 = √(8)/N_2 \n");
printf(" \n √(Z_AB)/(N_2 - N_1) = √(4)/N_1 - √(8)/N_2 \n");
printf(" \n yielding, √(Z_AB) = √(8) - √(4) = %f \n",root_Z_AB);
printf(" \n which Z_AB = (%f)^2 = %.2f Ω \n",root_Z_AB,Z_AB);

    
