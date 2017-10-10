// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 17: ELECTRIC POWER SUPPLY SYSTEMS

// EXAMPLE : 17.4 :
// Page number 424-425
clear ; clc ; close ; // Clear the work space and console

// Given data
n = 3.0       // 3-phase 4 wire ac system

// Calculations
a2_a1 = 1.0/6            // Ratio of cross-sectional area of 2 wire dc to 3-phase 4-wire system
ratio_cu = 3.5/2*a2_a1   // Copper for 3 phase 4 wire system to copper for 2 wire dc system

// Results
disp("PART II - EXAMPLE : 17.4 : SOLUTION :-")
printf("\nCopper for 3-phase 4-wire system/Copper for 2-wire dc system = %.3f : 1", ratio_cu)
