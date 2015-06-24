// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-33

clear; clc; close; // Clear the work space and console.

// Given data
S = 20 ; // kVA rating of transformer
N_1 = 230 ; // Number of primary turns
N_2 = 20 ; // Number of secondary turns

V_1 = 230 ; // Primary voltage in volt
V_2 = 20 ; // Secondary voltage in volt

// from Fig.14-31a
// HV side SC test data
V_sc = 4.5 ; // short circuit voltage in volt
I_sc = 87 ; // short circuit current in A
P_sc = 250 ; // Power measured in W

// Calculations
// case a
V_h = V_sc ;// short circuit voltage in volt on HV side
I_h = I_sc ;// short circuit current in A on HV side
Z_eh = V_h /I_h ; // Equivalent immpedance reffered to the high side when coils are series connected

// case b
Z_el = Z_eh * (N_2/N_1)^2 ; //Equivalent immpedance reffered to the low side 
// when coils are series connected

// case c
I_2_rated = (S*1000)/V_2 ; // Rated secondary current when coils are series connected

// case d
I_2_sc = S / Z_el ; // Secondary current when the coils in Fig.14-31a are 
// short-circuited with rated voltage applied to the HV side 

percent_overload = (I_2_sc/I_2_rated)*100 ; // percent overload


// Display the results
disp("Example 14-33 Solution : ");

printf(" \n    Slight variations in answers are due to non-approximated calculations");
printf(" \n    in scilab\n\n");
printf(" \n a: Equivalent immpedance reffered to the high side when coils are series connected :");
printf(" \n    Z_eh = %f ohm \n ",Z_eh);

printf(" \n b: Equivalent immpedance reffered to the low side when coils are series connected :");
printf(" \n    Z_el = %f ohm \n ",Z_el);

printf(" \n c: Rated secondary current when coils are series connected :");
printf(" \n    I_2(rated) = %d A \n",I_2_rated);

printf(" \n d: Secondary current when the coils in Fig.14-31a are short-circuited :");
printf(" \n    with rated voltage applied to the HV side :");
printf(" \n    I_2(sc) = %d A \n",I_2_sc);
printf(" \n    The percent overload is = %d percent",percent_overload);
