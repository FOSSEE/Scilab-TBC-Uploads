// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 15: INSULATION CO-ORDINATION

// EXAMPLE : 15.1 :
// Page number 398-399
clear ; clc ; close ; // Clear the work space and console

// Given data
L = 30.0          // Height of arrester located(m)
BIL = 650.0       // BIL(kV)
de_dt = 1000.0    // Rate of rising surge wave front(kV/µ-sec)
V = 132.0         // Transformer voltage at HV side(kV)
E_a = 400.0       // Discharge voltage of arrester(kV)
v = 3.0*10**8     // Velocity of surge propagation(m/sec)

// Calculations
E_t = E_a+(2.0*de_dt*L/300)   // Highest voltage the transformer is subjected(kV)

// Results
disp("PART II - EXAMPLE : 15.1 : SOLUTION :-")
printf("\nHighest voltage to which the transformer is subjected, E_t = %.f kV", E_t)
