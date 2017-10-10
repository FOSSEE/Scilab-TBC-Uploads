// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 9: PROTECTION OF TRANSFORMERS

// EXAMPLE : 9.2 :
// Page number 635-636
clear ; clc ; close ; // Clear the work space and console

// Given data
V_lv = 220.0                 // LV side voltage of transformer(V)
V_hv = 11000.0               // HV side voltage of transformer(V)
ratio_CT = 600.0/(5/3**0.5)  // CT ratio on LV side of transformer

// Calculations
CT_pri = 600.0           // Primary CT
CT_sec = 5.0/3**0.5      // Secondary CT
I_1 = V_lv/V_hv*CT_pri   // Line current in secondary of transformer corresponding to primary winding(A)
I_2 = CT_sec*3**0.5      // Current in secondary of CT(A)

// Results
disp("PART III - EXAMPLE : 9.2 : SOLUTION :-")
printf("\nRatio of CTs on 11000 V side = %.f : %.f \n", I_1,I_2)
printf("\nNOTE: ERROR: Mistake in representing the final answer in textbook solution")
