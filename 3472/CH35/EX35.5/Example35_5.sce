// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 9: PROTECTION OF TRANSFORMERS

// EXAMPLE : 9.5 :
// Page number 636-637
clear ; clc ; close ; // Clear the work space and console

// Given data
kVA = 200.0          // Transformer rating(kVA)
E_1 = 11000.0        // HV side voltage of transformer(kV)
E_2 = 400.0          // LV side voltage of transformer(kV)
ratio_CT = 500.0/5   // CT ratio on LV side of transformer
I_f = 750.0          // Fault current(A)

// Calculations
I_2 = 500.0                   // Primary CT
I_1 = 5.0                     // Secondary CT
I_1_T = E_2*I_2/(3**0.5*E_1)  // Primary current in transformer(A)
I_hv_T = I_1_T*3**0.5         // Equivalent line current on HV side(A)
I_pilot_lv = I_1*3**0.5       // Pilot current on LV side(A)

// Results
disp("PART III - EXAMPLE : 9.5 : SOLUTION :-")
printf("\nCT ratios on high voltage side = %.2f : %.2f \n", I_hv_T,I_pilot_lv)
printf("\nNOTE: Circulating current is not calculated")
