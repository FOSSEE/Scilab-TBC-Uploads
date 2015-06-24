clear;
clc;

// Stoichiometry
// Chapter 2
// Basic Chemical Calculations


// Example 2.9
// Page 22
printf("Example 2.9, Page 22 \n \n");

// solution

// basis 100kg urea
m1 = 45 //[kg] (mass of N present)
Mu = 60 // (molar mass of urea)
m2 = 14*2 //[kg] (mass of N in 1 kmol of urea)
m = (Mu/m2)*m1
printf("The sample contains "+string(m)+" percent urea.")
