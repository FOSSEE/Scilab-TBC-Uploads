// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 13: RATINGS,SELECTION,AND MAINTENANCE OF ELECTRIC MACHINERY
// Example 13-2

clear; clc; close; // Clear the work space and console.

// Given data
// MOTOR(class A insulation ) is operated for 6 hrs
T = 75 ; // Temperature in degree celsius recorded by the embedded detectors
life_orig = 10 ; // Life in years of the motor (standard)

// Calculations
delta_T = 105 - T ; // Positive temperature difference between the given
// max hottest spot temperature of its insulation and the ambient temperature recorded.
// 105 is chosen from table 13-1 (class A insulation)
E = 2 ^ (delta_T/10); // Life extension factor
  
Life_calc = life_orig * E ; // Increased life expectancy of the motor in years

// Display the results
disp("Example 13-2 Solution : ");
printf(" \n Life extension factor : E = %d \n ",E );
printf(" \n Increased life expectancy of the motor : Life_calc = %d years ",Life_calc);
