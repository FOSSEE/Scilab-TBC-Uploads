// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 1: SYMMETRICAL SHORT CIRCUIT CAPACITY CALCULATIONS

// EXAMPLE : 1.6 :
// Page number 471
clear ; clc ; close ; // Clear the work space and console

// Given data
kVA_gen = 21000.0       // Generator rating(kVA)
kV_gen = 13.8           // Voltage rating of generator(kV)
X_tr_gen = 30.0         // Transient reactance of generator(%)
kVA_trans = 7000.0      // Transformer rating(kVA)
kV_trans_lv = 13.8      // LV voltage rating of transformer(kV)
kV_trans_hv = 66.0      // HV voltage rating of transformer(kV)
X_trans = 8.4           // Reactance of transformer(%)
l = 50.0                // Tie line length(miles)
x = 0.848               // Reactance of tie line(ohm/mile)
l_fault = 20.0          // Location of fault from station A(miles)

// Calculations
kVA_base = kVA_gen                                     // Base rating(kVA)
kV_base_lv = kV_trans_lv                               // Base voltage on L.V side(kV)
kV_base_hv = kV_trans_hv                               // Base voltage on H.V side(kV)
Z_gen_pu = %i*X_tr_gen/100                             // Impedance of generator(p.u)
Z_trans_pu = %i*X_trans*3/100                          // Impedance of transformer(p.u)
Z_F_left = %i*x*l_fault*kVA_base/(kV_base_hv**2*1000)  // Impedance of line to left of fault F(p.u)
Z_F_right = Z_F_left*(l-l_fault)/l_fault               // Impedance of line to right of fault(p.u)
Z_AF = Z_gen_pu+Z_trans_pu+Z_F_left                    // Impedance(p.u)
Z_BF = Z_gen_pu+Z_trans_pu+Z_F_right                   // Impedance(p.u)
Z_eq = Z_AF*Z_BF/(Z_AF+Z_BF)                           // Equivalent impedance(p.u)
I_F = 1.0/abs(Z_eq)                                    // Fault current(p.u)
I_base = kVA_base/(3**0.5*kV_base_hv)                  // Base current(A)
I_F_actual = I_F*I_base                                // Actual fault current(A)

// Results
disp("PART III - EXAMPLE : 1.6 : SOLUTION :-")
printf("\nActual fault current = %.f A \n", I_F_actual)
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more precision here")
