// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 8: PROTECTION OF ALTERNATORS AND AC MOTORS

// EXAMPLE : 8.3 :
// Page number 625
clear ; clc ; close ; // Clear the work space and console

// Given data
kVA = 5000.0      // Alternator rating(kVA)
V = 6600.0        // Alternator voltage(V)
X = 2.0           // Synchronous reactance per phase(ohm)
R = 0.5           // Resistance(ohm)
ofb = 30.0        // Out-of-balance current(%)
R_n = 6.5         // Resistance of resistor earthed to star point(ohm)

// Calculations
I_fl = kVA*1000/(3**0.5*V)                 // Full load current(A)
I_ofb = ofb/100*I_fl                       // Out-of-balance current(A)
x = R_n/((V/(3**0.5*100*I_ofb))-(R/100))   // Portion of winding unprotected(%)

// Results
disp("PART III - EXAMPLE : 8.3 : SOLUTION :-")
printf("\nPortion of alternator winding unprotected, x = %.1f percent", x)
