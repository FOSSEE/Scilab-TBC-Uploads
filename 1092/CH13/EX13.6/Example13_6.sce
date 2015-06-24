// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 13: RATINGS,SELECTION,AND MAINTENANCE OF ELECTRIC MACHINERY
// Example 13-6

clear; clc; close; // Clear the work space and console.

// Given data
P_o = 55 ; // Power rating of the WRIM in hp
T_ambient = 40 ; // Standard ambient temperature recorded by the embedded 
// hot-spot detectors in degree celsius
life_orig = 10 ; // Life in years of the motor (standard)

// Calculated data from Ex.13-5b
T_f = 172 ; // Approximate final hot-spot temperature in degree celsius

// Calculations
delta_T = T_f - 155 ; // Positive temperature difference betw the given
// max hottest spot temperature of its insulation and the ambient temperature recorded.
// 155 is chosen from table 13-1(class F insulation)

R = 2 ^ (delta_T/10); // Life reduction factor
  
Life_calc = life_orig / R ; // Reduced life expectancy of the motor in years

// Display the results
disp("Example 13-6 Solution : ");
printf(" \n From Ex.13-5b,T_f = %d degree celsius\n",T_f);
printf(" \n Life reduction factor : R = %.2f \n  ",R );
printf(" \n Reduced life expectancy of the motor : Life_calc = %.2f years",Life_calc);
