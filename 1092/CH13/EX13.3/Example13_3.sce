// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 13: RATINGS,SELECTION,AND MAINTENANCE OF ELECTRIC MACHINERY
// Example 13-3

clear; clc; close; // Clear the work space and console.

// Given data
// Class A insulation
T_A = 105 ; // Temperature in degree celsius recorded by the embedded detectors
life_orig = 5 ; // Life in years of the motor (standard)
// Class B insulation
T_B = 130 ; // Temperature in degree celsius recorded by the embedded detectors

// Calculations
delta_T = T_B - T_A ; // Positive temperature difference betw the given
// max hottest spot temperature of its insulation and the ambient temperature recorded.
// T_A and T_B are chosen from table 13-1
E = 2 ^ (delta_T/10); // Life extension factor
  
Life_calc = life_orig * E ; // Increased life expectancy of the motor in years

// Display the results
disp("Example 13-3 Solution : ");
printf(" \n Life extension factor : E = %.2f \n ",E );
printf(" \n Increased life expectancy of the motor : Life_calc = %.1f years ",Life_calc);
