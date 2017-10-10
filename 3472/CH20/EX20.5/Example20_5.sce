// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 13: WAVE PROPAGATION ON TRANSMISSION LINES

// EXAMPLE : 13.5 :
// Page number 366
clear ; clc ; close ; // Clear the work space and console

// Given data
R_A = 500.0     // Surge impedance of line A(ohm)
R_B = 70.0      // Surge impedance of line B(ohm)
R_C = 600.0     // Surge impedance of line C(ohm)
e = 20.0        // Rectangular voltage wave(kV)

// Calculations
E_2 = e*(1+((R_B-R_A)/(R_B+R_A)))       // Transmitted wave(kV)
E_4 = E_2*(1+((R_C-R_B)/(R_C+R_B)))     // First voltage impressed on C(kV)
E_3 = E_2*(R_C-R_B)/(R_C+R_B)           // Reflected wave(kV)
E_5 = E_3*(R_A-R_B)/(R_A+R_B)           // Reflected wave(kV)
E_6 = E_5*(1+((R_C-R_B)/(R_C+R_B)))     // Transmitted wave(kV)
second = E_4+E_6                        // Second voltage impressed on C(kV)

// Results
disp("PART II - EXAMPLE : 13.5 : SOLUTION :-")
printf("\nFirst voltage impressed on C = %.1f kV", E_4)
printf("\nSecond voltage impressed on C = %.1f kV", second)
