// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 7: UNDERGROUND CABLES

// EXAMPLE : 7.8 :
// Page number 215
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 33.0              // Line Voltage(kV)
D_2 = 2.0             // Conductor diameter(cm)
D_1 = 3.0             // Sheath diameter(cm)

// Calculations
R_2 = D_2/2                         // Conductor radius(cm)
R_1 = D_1/2                         // Sheath radius(cm)
g_max = V/(R_2*log(R_1/R_2))        // RMS value of maximum stress in the insulation(kV/cm)
g_min = V/(R_1*log(R_1/R_2))        // RMS value of minimum stress in the insulation(kV/cm)

// Results
disp("PART II - EXAMPLE : 7.8 : SOLUTION :-")
printf("\nMaximum stress in the insulation, g_max = %.2f kV/cm (rms)", g_max)
printf("\nMinimum stress in the insulation, g_min = %.2f kV/cm (rms)", g_min)
