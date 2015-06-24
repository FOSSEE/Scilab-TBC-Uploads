// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 7: PARALLEL OPERATION
// Example 7-4

clear; clc; close; // Clear the work space and console.

// Given data
P1 = 300 ; // Power rating of generator 1 in kW
P2 = 600 ; // Power rating of generator 2 in kW
V = 220 ; // Voltage rating of generator 1 and 2 in volt
V_o = 250 ; // No-load voltage applied to both the generators in volt
// Assume linear characteristics
V_1 = 230 ; // Terminal voltage in volt (case a)
V_2 = 240 ; // Terminal voltage in volt (case b)

// Calculations
// case a
kW1_a = (V_o - V_1)/(V_o - V) * P1 ; // kW carried by generator 1
kW2_a = (V_o - V_1)/(V_o - V) * P2 ; // kW carried by generator 2

// case b
kW1_b = (V_o - V_2)/(V_o - V) * P1 ; // kW carried by generator 1
kW2_b = (V_o - V_2)/(V_o - V) * P2 ; // kW carried by generator 2

// case c
frac_a = (V_o - V_1)/(V_o - V); // Fraction of rated kW carried by each generator
frac_b = (V_o - V_2)/(V_o - V); // Fraction of rated kW carried by each generator

// Display the results
disp("Example 7-4 Solution : ");
printf(" \n a: At 230 V, using Eq.(7-3) below : ");
printf(" \n    Generator 1 carries = %d kW ", kW1_a );
printf(" \n    Generator 2 carries = %d kW \n", kW2_a );

printf(" \n b: At 240 V, using Eq.(7-3) below : ");
printf(" \n    Generator 1 carries = %d kW ", kW1_b );
printf(" \n    Generator 2 carries = %d kW \n", kW2_b );

printf(" \n c: Both generators carry no-load at 250 V; ");
printf(" \n    %f rated load at %d V; ", frac_b , V_2 );
printf(" \n    %f rated load at %d V; ", frac_a , V_1 );
printf(" \n    and rated load at %d V. ", V );
