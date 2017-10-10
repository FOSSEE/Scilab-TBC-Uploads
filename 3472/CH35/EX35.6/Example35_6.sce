// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 9: PROTECTION OF TRANSFORMERS

// EXAMPLE : 9.6 :
// Page number 640
clear ; clc ; close ; // Clear the work space and console

// Given data
MVA = 50.0        // Transformer rating(MVA)
V_hv = 132.0      // HV side voltage of transformer(kV)
V_lv = 33.0       // LV side voltage of transformer(kV)
CT_sec = 1.0      // Secondary CT rating

// Calculations
I_FL = MVA*1000/(3**0.5*V_lv)                       // Full-load current(A)
CT_ratio_33kV = I_FL/CT_sec                         // CT ratio on 33 kV side
CT_ratio_132kV = (I_FL*V_lv/V_hv)/(CT_sec/3**0.5)   // CT ratio on 132 kV side

// Results
disp("PART III - EXAMPLE : 9.6 : SOLUTION :-")
printf("\nCT ratio on 33 kV side = %.f : 1 ", CT_ratio_33kV)
printf("\nCT ratio on 132 kV side = %.f : 1 = %.f√3 : 1 ", CT_ratio_132kV,CT_ratio_132kV/3**0.5)
