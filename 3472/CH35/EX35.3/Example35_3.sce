// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 9: PROTECTION OF TRANSFORMERS

// EXAMPLE : 9.3 :
// Page number 636
clear ; clc ; close ; // Clear the work space and console

// Given data
V_lv = 11.0*10**3       // LV side voltage of transformer(V)
V_hv = 66.0*10**3       // HV side voltage of transformer(V)
ratio_CT = 250.0/5      // CT ratio on LV side of transformer

// Calculations
V_hv_phase = V_hv/3**0.5          // HV side phase voltage(V)
ratio_main_T = V_hv_phase/V_lv    // Ratio of main transformer
I_2 = 250.0                       // Primary CT
I_1 = I_2/(ratio_main_T*3**0.5)   // Primary line current(A)
CT_sec = 5.0                      // Secondary CT
secondary_side = CT_sec/3**0.5    // HV side CT secondary

// Results
disp("PART III - EXAMPLE : 9.3 : SOLUTION :-")
printf("\nRatio of CTs on high voltage side = %.1f : %.1f = (%.f/%.2f√3) : (%.f/√3) ", I_1,secondary_side,I_2,ratio_main_T,CT_sec)
