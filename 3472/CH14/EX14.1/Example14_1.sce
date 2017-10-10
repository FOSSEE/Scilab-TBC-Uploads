// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 7: UNDERGROUND CABLES

// EXAMPLE : 7.1 :
// Page number 211
clear ; clc ; close ; // Clear the work space and console

// Given data
d = 2.5              // Core diameter(cm)
t = 1.25             // Insulation thickness(cm)
rho = 4.5*10**14     // Resistivity of insulation(ohm-cm)
l = 10.0**5          // Length(cm)

// Calculations
D = d+2*t                        // Overall diameter(cm)
R_i = rho/(2*%pi*l)*log(D/d)     // Insulation resistance(ohm)

// Results
disp("PART II - EXAMPLE : 7.1 : SOLUTION :-")
printf("\nInsulation resistance per km, R_i = %.2e ohm\n", R_i)
printf("\nNOTE: ERROR: Mistake in final answer in textbook")
