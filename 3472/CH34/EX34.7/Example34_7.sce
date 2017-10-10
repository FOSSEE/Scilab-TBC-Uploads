// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 8: PROTECTION OF ALTERNATORS AND AC MOTORS

// EXAMPLE : 8.7 :
// Page number 626-627
clear ; clc ; close ; // Clear the work space and console

// Given data
kV = 11.0         // Alternator voltage(kV)
MVA = 5.0         // Alternator rating(MVA)
X = 2.0           // Reactance per phase(ohm)
ofb = 35.0        // Out-of-balance current(%)
R_n = 5.0         // Resistance through which star point is earthed(ohm)

// Calculations
I_fl = MVA*1000/(3**0.5*kV)              // Full load current(A)
I_ofb = ofb/100*I_fl                     // Out-of-balance current(A)
x = I_ofb*R_n*100/(kV*1000/3**0.5)       // Portion of winding unprotected(%)
protected = 100.0-x                      // Winding that is protected against earth faults(%)

// Results
disp("PART III - EXAMPLE : 8.7 : SOLUTION :-")
printf("\nPercentage of winding that is protected against earth faults = %.2f percent", protected)
