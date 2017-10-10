// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 4: OVERHEAD LINE INSULATORS

// EXAMPLE : 4.9 :
// Page number 188
clear ; clc ; close ; // Clear the work space and console

// Given data
n = 3.0              // Number of insulators
V = 20.0             // Voltage across each conductor(kV)
c = 1.0/5            // Capacitance ratio

// Calculations
V_2 = 6.0/5.0            // Voltage across middle unit as top unit
V_1 = V/(1+2*V_2)        // Voltage across top unit(kV)
V_3 = V_2*V_1            // Voltage across bottom unit(kV)
C_x = c*(1+(1/V_2))      // Capacitance required

// Results
disp("PART II - EXAMPLE : 4.9 : SOLUTION :-")
printf("\nCase(a): Voltage on the line-end unit, V_3 = %.2f kV", V_3)
printf("\nCase(b): Value of capacitance required, Cx = %.3f*C", C_x)
