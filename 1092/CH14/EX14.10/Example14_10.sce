// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-10

clear; clc; close; // Clear the work space and console.

// Given data(from Example 14-9)
kVA = 1 ; // kVA rating of the transformer
V_1 = 220 ; // Primary voltage in volt
V_2 = 110 ; // Secondary voltage in volt
f_o = 400 ; // Frequency in Hz
f_f = 60 ; // Frequency in Hz for which the transformer is to be used
P_orig = 10 ; // Original iron losses of the transformer in W

// Calculations
// consider only ratio of frequencies for calculating B  
B = f_o / f_f ; // flux density

P_iron = (P_orig)*(B^2); // Iron losses in W

// Display the results
disp("Example 14-10 Solution : ");

printf(" \n Since E = k*f*B_m and the same primary voltage is applied to the ");
printf(" \n transformer at reduced frequency, the final flux density B_mf ");
printf(" \n increased significantly above its original maximum permissible ");
printf(" \n value B_mo to :\n B_mf = B_mo * (f_o/f_f) = %.2fB_mo \n ",B );

printf(" \n Since the iron losses vary approximately as the square of the flux density :");
printf(" \n P_iron = %d W ",P_iron );
