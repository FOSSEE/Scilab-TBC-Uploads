// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 7: PROTECTIVE RELAYS

// EXAMPLE : 7.1 :
// Page number 595-596
clear ; clc ; close ; // Clear the work space and console

// Given data
I_setting = 150.0   // Current setting of IDMT(%)
t_mult = 0.5        // Time multiplier setting
ratio_CT = 500.0/5  // CT ratio
CT_sec = 5.0        // Secondary turn
I_f = 6000.0        // Fault current

// Calculations
I_sec_fault = I_f/ratio_CT                // Secondary fault current(A)
PSM = I_sec_fault/(CT_sec*I_setting/100)  // Plug setting multiplier
t = 3.15                                  // Time against this PSM(sec). From graph E7.1 in textbook page no 595
time_oper = t*t_mult                      // Operating time(sec)

// Results
disp("PART III - EXAMPLE : 7.1 : SOLUTION :-")
printf("\nTime of operation of the relay = %.3f sec", time_oper)
