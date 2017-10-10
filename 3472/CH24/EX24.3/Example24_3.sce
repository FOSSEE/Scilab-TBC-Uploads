// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 17: ELECTRIC POWER SUPPLY SYSTEMS

// EXAMPLE : 17.3 :
// Page number 424
clear ; clc ; close ; // Clear the work space and console

// Given data
PF = 0.95    // Lagging power factor

// Calculations
P_1 = 1.0                                     // Power in terms of V*I_1
P_2 = 2.0*PF**2                               // Power in terms of V*I_1
P_additional_percentage = (P_2-P_1)/P_1*100   // Percentage additional power transmitted in a 3-phase 3-wire system

// Results
disp("PART II - EXAMPLE : 17.3 : SOLUTION :-")
printf("\nPercentage additional power transmitted in a 3-phase 3-wire system = %.f percent", P_additional_percentage)
