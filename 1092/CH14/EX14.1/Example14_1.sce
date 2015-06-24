// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-1

clear; clc; close; // Clear the work space and console.

// Given data for Step -down transformer
N_1 = 500 ; // Number of turns in the primary
N_2 = 100 ; // Number of turns in the secondary
I_2 = 12 ; // Load (Secondary) current in A

// Calculations
// case a
alpha = N_1 / N_2 ; // Transformation ratio

// case b
I_1 = I_2 / alpha ; // Load component of primary current in A

// case c
// sunscript c for alpha indicates case c
// For step up transformer , using above given data
N1 = 100 ; // Number of turns in the primary
N2 = 500 ; // Number of turns in the secondary
alpha_c = N1 / N2 ; // Transformation ratio

// Display the results
disp("Example 14-1 Solution : ");

printf(" \n a: Transformation ratio(step-down transformer) :\n    α = %d\n",alpha);

printf(" \n b: Load component of primary current : \n    I_1 = %.1f A \n",I_1);

printf(" \n c: Transformation ratio(step-up transformer) :\n    α = %.1f",alpha_c);
