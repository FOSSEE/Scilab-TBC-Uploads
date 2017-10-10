// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 4: OVERHEAD LINE INSULATORS

// EXAMPLE : 4.3 :
// Page number 184
clear ; clc ; close ; // Clear the work space and console

// Given data
n = 3.0             // Number of insulators

// Calculations
V_1 = 155.0/475.0            // Potential across top unit
V_2 = 154.0/155.0*V_1        // Potential across middle unit
V_3 = 166.0/155.0*V_1        // Potential across bottom unit
eff = 100/(n*V_3)            // String efficiency(%)

// Results
disp("PART II - EXAMPLE : 4.3 : SOLUTION :-")
printf("\nVoltage across top unit, V_1 = %.3f*V", V_1)
printf("\nVoltage across middle unit, V_2 = %.3f*V", V_2)
printf("\nVoltage across bottom unit, V_3 = %.2f*V", V_3)
printf("\nString efficiency = %.2f percent", eff)
