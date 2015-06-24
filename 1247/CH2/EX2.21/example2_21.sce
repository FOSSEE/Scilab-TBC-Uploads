clear;
clc;

// Stoichiometry
// Chapter 2
// Basic Chemical Calculations

// Example 2.21

// Page 27
printf("Example 2.21, Page 29 \n \n");

// solution

//HOCl
Ma = .1 //molarity
Ka = 9.6*10^-7
C = (Ma*Ka)^.5 // conc. of H+ ions
pH = -log10(C)
printf("pH of the sol is "+string(pH)+".")
