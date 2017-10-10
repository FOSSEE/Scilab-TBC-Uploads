// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 4: OVERHEAD LINE INSULATORS

// EXAMPLE : 4.7 :
// Page number 186-187
clear ; clc ; close ; // Clear the work space and console

// Given data
n = 3.0              // Number of insulators
C_1 = 0.2            // Capacitance in terms of C
C_2 = 0.1            // Capacitance in terms of C

// Calculations
// Without guard ring
e_2_a = 13.0/13.3                 // Potential across middle unit as top unit
e_1_a = 8.3/6.5*e_2_a             // Potential across bottom unit
E_a = 1+(1/(8.3/6.5))+(1/e_1_a)   // Voltage in terms of e_1
eff_a = E_a/n*100                 // String efficiency(%)
e1_a = 1/E_a                      // Voltage across bottom unit as a % of line voltage
e2_a = 1/(8.3/6.5)*e1_a           // Voltage across middle unit as a % of line voltage
e3_a = 1/e_1_a*e1_a               // Voltage across top unit as a % of line voltage
// With guard ring
e_2_b = 15.4/15.5                 // Potential across middle unit as top unit
e_1_b = 8.3/7.7*e_2_b             // Potential across bottom unit
E_b = 1+(1/(8.3/7.7))+(1/e_1_b)   // Voltage in terms of e_1
eff_b = E_b/n*100                 // String efficiency(%)
e1_b = 1/E_b                      // Voltage across bottom unit as a % of line voltage
e2_b = 1/(8.3/7.7)*e1_b           // Voltage across middle unit as a % of line voltage
e3_b = 1/e_1_b*e1_b               // Voltage across top unit as a % of line voltage

// Results
disp("PART II - EXAMPLE : 4.7 : SOLUTION :-")
printf("\nWithout guard ring:")
printf("\n Voltage across bottom unit, e_1 = %.2f*E", e1_a)
printf("\n Voltage across bottom unit, e_2 = %.2f*E", e2_a)
printf("\n Voltage across bottom unit, e_3 = %.2f*E", e3_a)
printf("\n String efficiency = %.1f percent \n", eff_a)
printf("\nWith guard ring:")
printf("\n Voltage across bottom unit, e_1 = %.2f*E", e1_b)
printf("\n Voltage across bottom unit, e_2 = %.2f*E", e2_b)
printf("\n Voltage across bottom unit, e_3 = %.3f*E", e3_b)
printf("\n String efficiency = %.2f percent", eff_b)
