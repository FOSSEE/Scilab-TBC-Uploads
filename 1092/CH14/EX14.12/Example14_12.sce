// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-12

clear; clc; close; // Clear the work space and console.

// Given data(from Example 14-11)
V_1 = 2300 ; // Primary voltage in volt
V_2 = 230 ; // Secondary voltage in volt
I_2 = 2174 ; // Secondary current in A
I_1 = 217.4 ; // Primary current in A
// calculated values from Example 14-11
Z_2 = 0.00316 ; // Secondary internal impedance in ohm
Z_1 = 0.316 ; // Primary internal impedance in ohm


// Calculations
alpha = V_1 / V_2 ; // Transformation ratio
// case a
Z_L = V_2 / I_2 ; // Load impedance in ohm

// case b
Z_p = V_1 / I_1 ; // Primary input impedance in ohm

Zp = (alpha)^2 * Z_L ; // Primary input impedance in ohm

// Display the results
disp("Example 14-12 Solution : ");

printf(" \n a: Load impedance :\n    Z_L = %.4f ohm \n ", Z_L );

printf(" \n b: Primary input impedance : ");
printf(" \n    (method 1) :\n    Z_p = %.2f ohm \n ",Z_p );
printf(" \n    (method 2) :\n    Z_p = %.2f ohm \n ",Zp );

printf(" \n c: The impedance of the load Z_L = %.4f Ω, which is much greater",Z_L);
printf(" \n    than the internal secondary impedance Z_2 = %.5f Ω .\n ",Z_2);
printf(" \n    The primary input impedance Z_p = %.2f Ω,which is much greater",Z_p);
printf(" \n    than the internal primary impedance Z_1 = %.3f Ω .\n",Z_1);

printf(" \n d: It is essential for Z_L to be much greater than Z_2 so that the ");
printf(" \n    major part of the voltage produced by E_2 is dropped across the ");
printf(" \n    load impedance Z_L. As Z_L is reduced in proportion to Z_2, the ");
printf(" \n    load current increases and more voltage is dropped internally ");
printf(" \n    across Z_2.");
