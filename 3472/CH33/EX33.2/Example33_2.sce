// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 7: PROTECTIVE RELAYS

// EXAMPLE : 7.2 :
// Page number 596
clear ; clc ; close ; // Clear the work space and console

// Given data
ratio = 525.0/1     // CT ratio
CT_sec = 1.0        // Secondary turn
t_mult = 0.3        // Time multiplier setting
I_f = 5250.0        // Fault current(A)

// Calculations
I_sec_fault = I_f/ratio            // Secondary fault current(A)
PSM = I_sec_fault/(1.25*CT_sec)    // Plug setting multiplier
t = 3.15                           // Time against this PSM(sec). From graph E7.1 in textbook page no 595
time_oper = t*t_mult               // Operating time(sec)

// Results
disp("PART III - EXAMPLE : 7.2 : SOLUTION :-")
printf("\nTime of operation of the relay = %.3f sec", time_oper)
