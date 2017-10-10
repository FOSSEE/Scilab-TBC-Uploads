// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 7: PROTECTIVE RELAYS

// EXAMPLE : 7.4 :
// Page number 596-597
clear ; clc ; close ; // Clear the work space and console

// Given data
I_f = 2000.0         // Fault current(A)
ratio_CT = 200.0/1   // CT ratio
R_1 = 100.0          // Relay 1 set on(%)
R_2 = 125.0          // Relay 2 set on(%)
t_margin = 0.5       // Discriminative time margin(sec)
TSM_1 = 0.2          // Time setting multiplier of relay 1

// Calculations
CT_sec = 200.0                         // CT secondary
PSM_1 = I_f*100/(CT_sec*R_1)           // PSM of relay 1
t_1 = 2.8                              // Time against this PSM(sec). From graph E7.1 in textbook page no 595
time_oper_1 = TSM_1*t_1                // Operating time of relay with TSM of 0.2(Sec)
PSM_2 = I_f*100/(CT_sec*R_2)           // PSM of relay 2
t_2 = 3.15                             // Time against this PSM(sec). From graph E7.1 in textbook page no 595
actual_time_2 = time_oper_1+t_margin   // Actual time of operation of relay 2(sec)
TSM_2 = actual_time_2/t_2              // Time setting multiplier of relay 2

// Results
disp("PART III - EXAMPLE : 7.4 : SOLUTION :-")
printf("\nTime of operation of relay 1 = %.2f sec", time_oper_1)
printf("\nActual time of operation of relay 2 = %.2f sec", actual_time_2)
printf("\nT.S.M of relay 2 = %.4f", TSM_2)
