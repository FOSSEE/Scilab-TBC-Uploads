// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 6: AC DYNAMO VOLTAGE RELATIONS-ALTERNATORS
// Example 6-3

clear; clc; close; // Clear the work space and console.

// Given data
// From Ex.6-1 and Ex.6-2 we have V_P and E_g values as follows
// Note : approximated values are considered when root 3 value is taken as 1.73 
// as in textbook
V_P = 2660 ; // Phase voltage 
E_g_a1 = 3836 ; // E_g at unity PF (Ex.6-1 case a)
E_g_b1 = 4814 ; // E_g at 0.75 PF lagging (Ex.6-1 case b)
 
E_g_a2 = 2364 ; // E_g at 0.75 PF leading (Ex.6-2 case a)
E_g_b2 = 1315 ; // E_g at 0.40 PF leading (Ex.6-2 case b)

// Calculations
VR_a = ( E_g_a1 - V_P )/V_P * 100 ; // voltage regulation at unity PF  (Ex.6-1 case a)
VR_b = ( E_g_b1 - V_P )/V_P * 100 ; // voltage regulation at 0.75 PF lagging (Ex.6-1 case b)

VR_c = ( E_g_a2 - V_P )/V_P * 100 ; // voltage regulation at 0.75 PF leading (Ex.6-2 case a)
VR_d = ( E_g_b2 - V_P )/V_P * 100 ; // voltage regulation at 0.40 PF leading (Ex.6-2 case b)

// Display the results
disp("Example 6-3 Solution : ");
printf(" \n a: At unity PF : ");
printf(" \n    VR = %.1f percent \n ", VR_a );

printf(" \n b: At 0.75 PF lagging : ");
printf(" \n    VR = %.2f percent \n ", VR_b );

printf(" \n c: At 0.75 PF leading : ");
printf(" \n    VR = %.2f percent \n ", VR_c );

printf(" \n d: At 0.40 PF leading : ");
printf(" \n    VR = %.1f percent \n ", VR_d );
