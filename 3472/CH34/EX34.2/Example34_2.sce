// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 8: PROTECTION OF ALTERNATORS AND AC MOTORS

// EXAMPLE : 8.2 :
// Page number 624-625
clear ; clc ; close ; // Clear the work space and console

// Given data
MVA = 20.0            // Generator rating(MVA)
V = 11.0*10**3        // Generator voltage(V)
ratio_CT = 1200.0/5   // Ratio of current transformer
I_min_op = 0.75       // Minimum operating current of relay(A)
R = 6.0               // Neutral point earthing resistance(ohm)

// Calculations
I_max_fault = ratio_CT*I_min_op       // Maximum fault current to operate relay(A)
x = I_max_fault*3**0.5*100*R/V        // Unprotected portion for R = 6 ohm(%)
R_1 = 3.0                             // Neutral point earthing resistance(ohm)
x_1 = I_max_fault*3**0.5*100*R_1/V    // Unprotected portion for R = 3 ohm(%)
R_3 = 12.0                            // Neutral point earthing resistance(ohm)
x_3 = I_max_fault*3**0.5*100*R_3/V    // Unprotected portion for R = 12 ohm(%)

// Results
disp("PART III - EXAMPLE : 8.2 : SOLUTION :-")
printf("\nUnprotected portion of each phase of the stator winding against earth fault, x = %.f percent", x)
printf("\nEffect of varying neutral earthing resistance keeping relay operating current the same :")
printf("\n (i)   R = 3 ohms")
printf("\n       Unprotected portion = %.1f percent", x_1)
printf("\n       Protected portion = %.1f percent", (100-x_1))
printf("\n (ii)  R = 6 ohms")
printf("\n       Unprotected portion = %.f percent", x)
printf("\n       Protected portion = %.f percent", (100-x))
printf("\n (iii) R = 12 ohms")
printf("\n       Unprotected portion = %.f percent", x_3)
printf("\n       Protected portion = %.f percent", (100-x_3))
