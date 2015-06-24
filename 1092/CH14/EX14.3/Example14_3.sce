// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-3

clear; clc; close; // Clear the work space and console.

// Given data
N_1 = 500 ; // Number of primary turns in the audio output transformer
N_2 = 25 ; // Number of secondary turns in the audio output transformer
Z_L = 8 ; // Speaker impedance in ohm
V_1 = 10 ; // Output voltage of the audio output transformer in volt

// Calculations
// case a
alpha = N_1/N_2 ; // step-down transformation ratio
Z_1 = (alpha)^2 * Z_L ; // Impedance reflected to the transformer primary 
// at the output of Tr in ohm

// case b
I_1 = V_1 / Z_1 ; // Primary current in A

// Display the results
disp("Example 14-3 Solution : ");

printf(" \n a: Transformation ratio :\n    α = %d\n",alpha);
printf(" \n    Impedance reflected to the transformer primary at the output of Tr :");
printf(" \n    Z_1 = %d ohm \n ",Z_1);

printf(" \n b: Matching transformer primary current :\n    I_1 = %f A",I_1);
printf(" \n    I_1 = %.3f mA ",1000 * I_1);
