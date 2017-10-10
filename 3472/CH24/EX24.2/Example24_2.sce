// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 17: ELECTRIC POWER SUPPLY SYSTEMS

// EXAMPLE : 17.2 :
// Page number 423
clear ; clc ; close ; // Clear the work space and console

// Given data
P_1 = 1.0    // Assume P1 to be 1

// Calculations
P_2 = (3.0*2)**0.5            // 3-phase power transmitted in terms of P_1
inc_per = (P_2-P_1)/P_1*100   // Increase in power transmitted(%)

// Results
disp("PART II - EXAMPLE : 17.2 : SOLUTION :-")
printf("\nPercentage increase in power transmitted = %.f percent", inc_per)
