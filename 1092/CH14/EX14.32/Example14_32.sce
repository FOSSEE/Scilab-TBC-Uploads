// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-32

clear; clc; close; // Clear the work space and console.

// Given data
S_1 = 10 ; // VA rating of small transformer
V = 115 ; //  voltage rating of transformer in volt
V_2_1 = 6.3 ; // voltage rating of one part of secondary winding in volt
V_2_2 = 5.0 ; // voltage rating of other part of secondary winding in volt
Z_2_1 = 0.2 ; // impedance of one part of secondary winding in ohm
Z_2_2 = 0.15 ; // impedance of other part of secondary winding in ohm


// Calculations
// case a
V_2 = V_2_1 + V_2_2 ; // voltage across secondary winding in volt
I_2 = S_1 / V_2 ; // Rated secondary current in A when the LV secondaries are
// connected in series-aiding

// case b
I_c = (V_2_1 - V_2_2) / (Z_2_1 + Z_2_2); // Circulating current when LV windings are paralled
percent_overload = (I_c / I_2)*100 ; // percent overload produced

// Display the results
disp("Example 14-32 Solution : ");

printf(" \n a: Both coils must be series-connected and used to account for the ");
printf(" \n    full VA rating of the transformer. Hence,the rated current in 5 V ");
printf(" \n    and 6.3 V winding is : \n");
printf(" \n    I_2 = %.3f A \n\n", I_2);

printf(" \n b: When the windings are paralleled, the net circulating current is ");
printf(" \n    the net voltage applied across the total internal impedance of ");
printf(" \n    the windings,or :\n");
printf(" \n    I_c = %.2f A \n ",I_c);

printf(" \n    The percent overload is = %f percent ≃ %.f percent ",percent_overload,percent_overload);
