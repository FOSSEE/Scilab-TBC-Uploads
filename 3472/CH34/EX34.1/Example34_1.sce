// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 8: PROTECTION OF ALTERNATORS AND AC MOTORS

// EXAMPLE : 8.1 :
// Page number 624
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 6600.0           // Alternator Voltage(V)
P = 2000.0*10**3     // Rating of alternator(W)
PF = 0.8             // Power factor of alternator
X = 12.5             // Alternator reactance(%)
I = 200.0            // Current protection(A)
per = 10.0           // Percentage of winding unprotected(%)

// Calculations
I_fl = P/(3**0.5*V*PF)          // Full load current of alternator(A)
x = X*V/(3**0.5*100*I_fl)       // Reactance per phase of alternator(ohm)
x_per = per/100*x               // Reactance of 10% of the winding(ohm)
NA = V/(3**0.5*per)             // Voltage induced in winding(V)
r = ((NA/I)**2-x_per**2)**0.5   // Neutral earthing reactance(ohm)

// Results
disp("PART III - EXAMPLE : 8.1 : SOLUTION :-")
printf("\nNeutral earthing reactance, r = %.2f ohm", r)
