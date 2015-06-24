// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 7: PARALLEL OPERATION
// Example 7-2

clear; clc; close; // Clear the work space and console.

// Given data
R_a = 0.1 ; // Armature resistance in ohm
R_f = 100 ; // Field ckt resistance in ohm
V_L_b = 120 ; // Bus voltage in volt
V_L_a = 140 ; // Voltage of the generator in volt
V_f = V_L_a ; // Voltage across the field in volt

// Calculations
// case a
I_f_a = V_f / R_f ; // Field current in A
I_a_a = I_f_a ; // Armature current in A
E_g_a = V_L_a + I_a_a * R_a ; // Generated EMF in volt
P_g_a = E_g_a * I_a_a ; // Generated power in W

// case b
I_a_b = ( E_g_a - V_L_b ) / R_a ; // Armature current in A
I_f_b = V_L_b / R_f ; // Field current in A
I_Lg = I_a_b - I_f_b ; // Generated line current in A
P_L = V_L_b * I_Lg ; // Power generated across the lines in W
E_g_b = V_L_a ;
P_g_b = E_g_b * I_a_b ; // Generated power in W

// Display the results 
disp("Example 7-2 Solution : ");
printf(" \n a: Before it is connected to the bus ");
printf(" \n    I_a = I_f = %.1f A \n    E_g = %.2f V\n    P_g = %.1f W \n", I_a_a,E_g_a,P_g_a);

printf(" \n b: After it is connected to the bus ");
printf(" \n    I_a = %.1f A \n    I_f = %.1f A \n    I_Lg = %.1f A \n", I_a_b, I_f_b, I_Lg );
printf(" \n    P_L = %.f W \n    P_g = %.f W ", P_L , P_g_b );
