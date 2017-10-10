// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 14: LIGHTNING AND PROTECTION AGAINST OVERVOLTAGES DUE TO LIGHTNING

// EXAMPLE : 14.1 :
// Page number 382
clear ; clc ; close ; // Clear the work space and console

// Given data
RI_072 = 72000.0     // Charactersistic of lightning arrester
Z_c = 500.0          // Surge impedance(ohm)
V = 500.0            // Surge voltage(kV)

// Calculations
// Case(a)
V_a = 2.0*V            // Voltage at the end of line at open-circuit(kV)
ratio_a = V_a/V        // Ratio of voltage when line in open-circuited
// Case(b)
I = V*1000/Z_c         // Surge current(A)
R = RI_072/(I)**0.72   // Resistance of LA(ohm)
ratio_b = R/Z_c        // Ratio of voltage when line is terminated by arrester

// Results
disp("PART II - EXAMPLE : 14.1 : SOLUTION :-")
printf("\nCase(a): Ratio of voltages appearing at the end of a line when line is open-circuited = %.f", ratio_a)
printf("\nCase(b): Ratio of voltages appearing at the end of a line when line is terminated by arrester = %.f", ratio_b)
