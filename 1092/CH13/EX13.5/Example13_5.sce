// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 13: RATINGS,SELECTION,AND MAINTENANCE OF ELECTRIC MACHINERY
// Example 13-5

clear; clc; close; // Clear the work space and console.

// Given data
P_o = 50 ; // Power rating of the WRIM in hp
// Class F insulation
T_hottest = 160 ; // Hottest-spot winding temperature recorded by the embedded 
// hot-spot detectors in degree celsius
T_ambient = 40 ; // Standard ambient temperature recorded by the embedded 
// hot-spot detectors in degree celsius
P_f_a = 40 ; // Power rating of load a in hp
P_f_b = 55 ; // Power rating of load a in hp

// Calculations
// case a
delta_T_o = T_hottest - T_ambient ; // Temperature rise for the insulation type 
// used in degree celsius

// subscript a in delta_T_f ,P_f_a and T_f indicates case a
delta_T_f_a = (P_f_a/P_o)*delta_T_o ; // final temperature rise in degree celsius
T_f_a = delta_T_f_a + T_ambient ; // Approximate final hot-spot temperature in degree celsius

// case b
// subscript b in delta_T_f ,P_f and T_f indicates case b
delta_T_f_b = (P_f_b/P_o)*delta_T_o ; // final temperature rise in degree celsius
T_f_b = delta_T_f_b + T_ambient ; // Approximate final hot-spot temperature in degree celsius

// Display the results
disp("Example 13-5 Solution : ");
printf(" \n a: ΔT_o = %d degree celsius ",delta_T_o);
printf(" \n    ΔT_f = %d degree celsius ",delta_T_f_a);
printf(" \n    T_f = %d degree celsius \n",T_f_a);

printf(" \n b: ΔT_f = %d degree celsius ",delta_T_f_b);
printf(" \n    T_f = %d degree celsius \n",T_f_b);
printf(" \n    Yes,motor life is reduced at the 110 percent motor load because");
printf(" \n    the allowable maximum hot-spot motor temperature for Class F");
printf(" \n    insulation is 155 degree celsius.");
