// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 8: CORONA

// EXAMPLE : 8.6 :
// Page number 229
clear ; clc ; close ; // Clear the work space and console

// Given data
P_c1 = 53.0           // Total corona loss(kW)
V_1 = 106.0           // Operating line voltage(kV)
P_c2 = 98.0           // Total corona loss(kW)
V_2 = 110.9           // Operating line voltage(kV)
V_3 = 113.0           // Operating line voltage(kV)

// Calculations
E_1 = V_1/3**0.5                        // Phase voltage(kV)
E_2 = V_2/3**0.5                        // Phase voltage(kV)
P_ratio = (P_c2/P_c1)**0.5
E_0 = (P_ratio*E_1-E_2)/(P_ratio-1)     // Disruptive critical voltage(kV)
E_3 = V_3/3**0.5                        // Phase voltage(kV)
W = ((E_3-E_0)/(E_1-E_0))**2*P_c1       // Corona loss at 113 kV(kW)

// Results
disp("PART II - EXAMPLE : 8.6 : SOLUTION :-")
printf("\nDisruptive critical voltage, E_0 = %.f kV", E_0)
printf("\nCorona loss at 113 kV, W = %.f kW\n", W)
printf("\nNOTE: Changes in obtained answer from textbook is due to more precision here")
