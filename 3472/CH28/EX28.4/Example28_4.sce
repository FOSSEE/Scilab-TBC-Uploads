// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 2: FAULT LIMITING REACTORS

// EXAMPLE : 2.4 :
// Page number 481
clear ; clc ; close ; // Clear the work space and console

// Given data
kVA = 20000.0   // Rating of generator(kVA)
f = 50.0        // Frequency(Hz)
V = 11.0*10**3  // Voltage of generator(V)
X_G = 20.0      // Generator short-circuit reactance(%)
x = 60.0        // Reactance falls to 60% normal value

// Calculations
kVA_base = 20000.0                                      // Base kVA
X = poly(0,"X")                                         // Reactance of each reactors E,F,G & H(%)
X_AE = X+X_G                                            // Reactances of A & E in series(%)
X_BF = X+X_G                                            // Reactances of B & F in series(%)
X_CD = X+X_G                                            // Reactances of C & D in series(%)
X_eq = X_AE/3                                           // X_eq = X_AE*X_BF*X_CD/(X_BF*X_CD+X_AE*X_CD+X_AE*X_BF). Combined reactances of 3 groups in parallel(%)
X_f = X_eq+X                                            // Reactances of these groups to fault via tie-bar(%)
X_sol = roots(6.66666666666667-(100-x)/100*(X_f))       // Value of reactance of each reactors E,F,G & H(%)
I_fl = kVA_base*1000/(3**0.5*V)                         // Full load current corresponding to 20000 kVA & 11 kV(A)
X_ohm = X_sol*V/(3**0.5*100*I_fl)                       // Ohmic value of reactance X(ohm)

// Results
disp("PART III - EXAMPLE : 2.4 : SOLUTION :-")
printf("\nReactance of each reactor = %.4f ohm \n", X_ohm)
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more precision here")
