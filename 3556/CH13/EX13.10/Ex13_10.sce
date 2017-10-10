clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1     :  AC Circuits 
// Chapter 13 :  Magnetically Couple Circuits
// Example 13 - 10

clear; clc; close; 
//
// Given data
I11 =   0.2000;
V11 = 240.0000;
I21 =   4.0000;
V21 =  12.0000;
I12 =   4.2000;
V12 = 240.0000;
I22 =   4.0000;
V22 = 252.0000;
//
// Calculations Two Winding Transformer The Power Rating S1 and S2
S11 =  V11 * I11;
S21 =  V21 * I21;
// Calculations Autotransformaer The Power Rating S1 and S2 
S12 = V12 * I12;
S22 = V22 * I22;
// Display the result
disp("Example 13-10 Solution : ");
printf(" \n S11   = Power Rating Two Winding Transformer S1       = %.3f VA",S11)
printf(" \n S21   = Power Rating Two Winding Transformer S2       = %.3f VA",S21)
printf(" \n S12   = Power Rating Autotransformer  S1              = %.3f VA",S12)
printf(" \n S22   = Power Rating Autotransformwer S2              = %.3f VA",S22)



