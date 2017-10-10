// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.2 :
// Page number 680
clear ; clc ; close ; // Clear the work space and console

// Given data
I_sc = 6.0     // Short circuit current = 6 times full load current
s_fl = 5.0     // Full load slip(%)
tap = 60.0     // Auto-tranformer tapping(%)

// Calculations
// Case(a)
I_s_fl_a = I_sc/3.0                 // I_s/I_fl
T_s_fl_a = I_s_fl_a**2*s_fl/100     // Starting torque in terms of full-load torque with star-delta starter
// Case(b)
I_s_fl_b = tap/100*I_sc             // I_s/I_fl
T_s_fl_b = I_s_fl_b**2*s_fl/100     // Starting torque in terms of full-load torque with auto-transformer starter

// Results
disp("PART IV - EXAMPLE : 1.2 : SOLUTION :-")
printf("\nCase(a): Starting torque in terms of full-load torque with star-delta starter, I_s/I_fl = %.1f ", T_s_fl_a)
printf("\nCase(b): Starting torque in terms of full-load torque with auto-transformer starter, I_s/I_fl = %.3f ", T_s_fl_b)
