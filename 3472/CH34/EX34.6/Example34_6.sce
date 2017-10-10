// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 8: PROTECTION OF ALTERNATORS AND AC MOTORS

// EXAMPLE : 8.6 :
// Page number 626
clear ; clc ; close ; // Clear the work space and console

// Given data
MVA = 50.0        // Alternator rating(MVA)
kV = 11.0         // Alternator voltage(kV)
X = 2.0           // Synchronous reactance per phase(ohm)
R = 0.7           // Resistance per phase(ohm)
R_n = 5.0         // Resistance through which alternator is earthed(ohm)
ofb = 25.0        // Out-of-balance current(%)

// Calculations
I_fl = MVA*1000/(3**0.5*kV)                      // Full load current(A)
I_ofb = ofb/100*I_fl                             // Out-of-balance current(A)
x = R_n/((kV*1000/(3**0.5*100*I_ofb))-(R/100))   // Portion of winding unprotected(%)

// Results
disp("PART III - EXAMPLE : 8.6 : SOLUTION :-")
printf("\nPortion of winding unprotected, x = %.f percent", x)
