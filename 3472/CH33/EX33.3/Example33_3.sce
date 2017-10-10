// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 7: PROTECTIVE RELAYS

// EXAMPLE : 7.3 :
// Page number 596
clear ; clc ; close ; // Clear the work space and console

// Given data
MVA = 20.0            // Transformer MVA
overload = 30.0       // Overload of transformer(%)
kV = 11.0             // Bus bar rating(kV)
CT_trans = 1000.0/5   // Transformer CT
CT_cb = 400.0/5       // Circuit breaker CT
ps = 125.0            // Plug setting(%)
ts = 0.3              // Time setting
I_f = 5000.0          // Fault current(A)
t_margin = 0.5        // Discriminative time margin(sec)

// Calculations
I_sec_fault = I_f/CT_cb                          // Secondary fault current(A)
CT_cb_sec = 5.0                                  // Secondary turn
PSM = I_sec_fault/(ps/100*CT_cb_sec)             // Plug setting multiplier
t = 2.8                                          // Time against this PSM(sec). From graph E7.1 in textbook page no 595
time_oper = t*ts                                 // Operating time of feeder relay(sec)
I_ol = (1+(overload/100))*MVA*1000/(3**0.5*kV)   // Overload current(A)
I_sec_T = I_ol/CT_trans                          // Secondary current(A)
CT_T_sec = 5.0                                   // Secondary turn of transformer
PSM_T = I_sec_T/CT_T_sec                         // Minimum plug setting multiplier of transformer
I_sec_T1 = I_f/CT_trans                          // Secondary fault current(A)
ps_T1 = 1.5                                      // Plug setting as per standard value
PSM_T1 = I_sec_T1/(CT_T_sec*ps)                  // Plug setting multiplier of transformer
t_T1 = 7.0                                       // Time against this PSM(sec). From graph E7.1 in textbook page no 595
time_setting = (time_oper+t_margin)/t_T1         // Time setting of transformer

// Results
disp("PART III - EXAMPLE : 7.3 : SOLUTION :-")
printf("\nOperating time of feeder relay = %.2f sec", time_oper)
printf("\nMinimum plug setting of transformer relay, P.S > %.2f ", PSM_T)
printf("\nTime setting of transformer = %.3f ", time_setting)
