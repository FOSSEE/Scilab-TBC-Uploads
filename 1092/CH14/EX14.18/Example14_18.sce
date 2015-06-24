// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-18

clear; clc; close; // Clear the work space and console.

// Given data
V_sc = 50 ; // Short circuit voltage in volt
V_1 = 2300 ; // Rated primary voltage in volt

// Calculations
P_c = poly(0,'P_c');// Making P_c as a variable just for displaying answer as per
// textbook

P_c_sc = (V_sc / V_1)^2 * P_c ; // Fraction of P_c measured by the wattmeter

// Display the results
disp("Example 14-18 Solution : ");

printf(" \n Since P_c is proportional to the square of the primary voltage V_sc, ");
printf(" \n then under short circuit conditions,the fraction of rated-core loss is :");
printf(" \n P_c(sc) = ");disp(P_c_sc);
