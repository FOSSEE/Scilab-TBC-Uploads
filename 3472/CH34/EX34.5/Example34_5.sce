// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 8: PROTECTION OF ALTERNATORS AND AC MOTORS

// EXAMPLE : 8.5 :
// Page number 625-626
clear ; clc ; close ; // Clear the work space and console

// Given data
MVA = 50.0           // Alternator rating(MVA)
V = 33.0*10**3       // Alternator voltage(V)
CT_ratio = 2000.0/5  // CT ratio
R = 7.5              // Resistor earthed generator neutral(ohm)
I = 0.5              // Current above which pick up current(A)

// Calculations
I_min = CT_ratio*I           // Minimum current required to operate relay(A)
x = I_min*R/(V/3**0.5)*100   // Winding unprotected during normal operation(%)

// Results
disp("PART III - EXAMPLE : 8.5 : SOLUTION :-")
printf("\nWinding of each phase unprotected against earth when machine operates at nominal voltage, x = %.2f percent", x)
