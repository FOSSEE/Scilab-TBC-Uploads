// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 4: OVERHEAD LINE INSULATORS

// EXAMPLE : 4.8 :
// Page number 187-188
clear ; clc ; close ; // Clear the work space and console

// Given data
n = 3.0              // Number of insulators

// Calculations
V_1 = 0.988                 // Voltage across top unit as middle unit
V_3 = 1.362                 // Voltage across bottom unit as middle unit
V_2 = 1/(V_1+1+V_3)         // Voltage across middle unit as % of line voltage to earth
V1 = V_1*V_2*100            // Voltage across top unit as % of line voltage to earth
V2 = V_2*100                // Voltage across middle unit as % of line voltage to earth
V3 = V_3*V_2*100            // Voltage across bottom unit as % of line voltage to earth
eff = 100/(n*V3/100)        // String efficiency(%)

// Results
disp("PART II - EXAMPLE : 4.8 : SOLUTION :-")
printf("\nCase(a): Voltage across top unit as a percentage of line voltage to earth, V_1 = %.2f percent", V1)
printf("\n         Voltage across middle unit as a percentage of line voltage to earth, V_2 = %.2f percent", V2)
printf("\n         Voltage across bottom unit as a percentage of line voltage to earth, V_3 = %.2f percent", V3)
printf("\nCase(b): String efficiency = %.2f percent", eff)
