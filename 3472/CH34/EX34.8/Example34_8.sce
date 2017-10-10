// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 8: PROTECTION OF ALTERNATORS AND AC MOTORS

// EXAMPLE : 8.8 :
// Page number 627
clear ; clc ; close ; // Clear the work space and console

// Given data
kV = 11.0         // Alternator voltage(kV)
P = 100.0         // Alternator maximum rating(MW)
PF = 0.8          // Power factor
X = 0.1           // Reactance of alternator(pu)
i = 500.0         // Current(A)
per = 10.0        // Windings unprotected(%)

// Calculations
I = P*1000/(3**0.5*kV*PF)      // Rated current of alternator(A)
a = i/I                        // Relay setting
I_n = a*I*100/per              // Current through neutral(A)
R = kV*1000/(3**0.5*I_n)       // Magnitude of neutral earthing resistance(ohm)

// Results
disp("PART III - EXAMPLE : 8.8 : SOLUTION :-")
printf("\nMagnitude of neutral earthing resistance, R = %.2f ohm\n", R) 
printf("\nNOTE: ERROR: Unit of resistance is not mentioned in textbook solution")
