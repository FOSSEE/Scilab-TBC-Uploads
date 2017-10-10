// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 9: PROTECTION OF TRANSFORMERS

// EXAMPLE : 9.4 :
// Page number 636
clear ; clc ; close ; // Clear the work space and console

// Given data
V_hv = 33.0           // HV side voltage of transformer(kV)
V_lv = 6.6            // LV side voltage of transformer(kV)
ratio_CT = 100.0/1    // CT ratio on LV side of transformer

// Calculations
CT_pri = 100.0              // Primary CT
CT_sec = 1.0                // Secondary CT
I_hv = V_lv/V_hv*CT_pri     // Line current on HV side(A)
I_lv = CT_sec/3**0.5        // Line current on LV side(A)

// Results
disp("PART III - EXAMPLE : 9.4 : SOLUTION :-")
printf("\nRatio of protective CTs on 33 kV side = %.f : %.f/√3 = %.f : %.f ", I_hv,CT_sec,3**0.5*I_hv,I_lv*3**0.5)
