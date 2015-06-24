// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-38

clear; clc; close; // Clear the work space and console.

// Given data
// 3-phase SCIM
V = 440 ; // rated voltage in volt of SCIM
hp = 100 ; // rated power in hp of SCIM
PF = 0.8 ; // power factor
V_1 = 155 ; // primary voltage in volt of Tr
V_2 = 110 ; // secondary voltage in volt of Tr

V_a = 110 ; // armature voltage in volt
V_L = 440 ; // Load voltage in volt
eta = .98 ; // efficiency of the Tr.

// Calculations
// case a
// referring to appendix A-3,Table 430-150 footnotes
I_L = 124*1.25 ; // Motor line current in A

// case b
alpha = V_a/V_L ; // Transformation ratio

// case c
I_a = (sqrt(3)/2)*( I_L / (alpha*eta) ); // Current in the primary of the scott transformers

// case d
kVA = (V_a*I_a)/((sqrt(3)/2)*1000); // kVA rating of the main and teaser transformers

// Display the results
disp("Example 14-38 Solution : ");

printf(" \n a: Motor line current :\n    I_L = %d A \n ",I_L);

printf(" \n b: Transformation ratio :\n    alpha = N_1/N_2 = V_a/V_L = %.2f \n",alpha);

printf(" \n c: Current in the primary of the scott transformers :\n    I_a = %.f A \n",I_a);

printf(" \n d: kVA rating of the main and teaser transformers :\n    kVA = %.1f kVA",kVA);
