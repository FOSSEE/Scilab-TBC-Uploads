// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 4: OVERHEAD LINE INSULATORS

// EXAMPLE : 4.1 :
// Page number 183
clear ; clc ; close ; // Clear the work space and console

// Given data
V_1 = 9.0       // Potential across top unit(kV)
V_2 = 11.0      // Potential across middle unit(kV)
n = 3.0         // Number of disc insulators

// Calculations
// Case(a)
K = (V_2-V_1)/V_1         // Ratio of capacitance b/w pin & earth to self capacitance
// Case(b)
V_3 = V_2+(V_1+V_2)*K     // Potential across bottom unit(kV)
V = V_1+V_2+V_3           // Voltage between line and earth(kV)
V_l = 3**0.5*V            // Line voltage(kV)
// Case(c)
eff = V/(n*V_3)*100       // String efficiency(%)

// Results
disp("PART II - EXAMPLE : 4.1 : SOLUTION :-")
printf("\nCase(a): Ratio of capacitance b/w pin & earth to self-capacitance of each unit, K = %.2f ", K)
printf("\nCase(b): Line voltage = %.2f kV", V_l)
printf("\nCase(c): String efficiency = %.f percent", eff)
