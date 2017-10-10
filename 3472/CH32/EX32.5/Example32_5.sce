// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 6: CIRCUIT BREAKER

// EXAMPLE : 6.5 :
// Page number 565
clear ; clc ; close ; // Clear the work space and console

// Given data
kV = 132.0        // Voltage(kV)
C = 0.01*10**-6   // Phase to ground capacitance(F)
L = 6.0           // Inductance(H)
i = 5.0           // Magnetizing current(A)

// Calculations
V_pros = i*(L/C)**0.5/1000    // Prospective value of voltage(kV)
R = 1.0/2*(L/C)**0.5/1000     // Resistance to be used across the contacts to eliminate the restriking voltage(k-ohm)

// Results
disp("PART III - EXAMPLE : 6.5 : SOLUTION :-")
printf("\nVoltage across the pole of a CB = %.1f kV", V_pros)
printf("\nResistance to be used across the contacts to eliminate the restriking voltage, R = %.2f k-ohm\n", R)
printf("\nNOTE: ERROR: Unit of final answer R is k-ohm, not ohm as in the textbook solution")
