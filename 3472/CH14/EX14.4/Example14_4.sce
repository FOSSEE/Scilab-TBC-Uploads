// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 7: UNDERGROUND CABLES

// EXAMPLE : 7.4 :
// Page number 212
clear ; clc ; close ; // Clear the work space and console

// Given data
V_l = 132.0         // Line Voltage(kV)
g_max = 60.0        // Maximum Line Voltage(kV)

// Calculations
V = V_l/3**0.5*2**0.5     // Phase Voltage(kV)
d = 2*V/g_max             // Core diameter(cm)
D = 2.718*d               // Overall diameter(cm)

// Results
disp("PART II - EXAMPLE : 7.4 : SOLUTION :-")
printf("\nMost economical diameter of a single-core cable, d = %.1f cm", d)
printf("\nOverall diameter of the insulation, D = %.3f cm\n", D)
printf("\nNOTE: Slight change in obtained answer due to precision")
