// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 1: SYMMETRICAL SHORT CIRCUIT CAPACITY CALCULATIONS

// EXAMPLE : 1.4 :
// Page number 469-470
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
kVA_base = kVA_gen                             // Base rating(kVA)
X_A = X_tr_gen                                 // Reactance of generator A(%)
X_B = X_tr_gen                                 // Reactance of generator B(%)
X_T1 = 3.0*X_trans                             // Reactance of transformer T1(%)
X_T2 = 3.0*X_trans                             // Reactance of transformer T2(%)
X_1 = kVA_base/(10*kV_trans_hv**2)*x*l_fault   // Reactance(%)
X_2 = X_1*(l-l_fault)/l_fault                  // Reactance(%)
X_AF = X_A+X_T1+X_1                            // Resultant reactance A to F(%)
X_BF = X_B+X_T2+X_2                            // Resultant reactance B to F(%)
X_eq_fault = X_AF*X_BF/(X_AF+X_BF)             // Equivalent reactance upto fault(%)
kVA_SC = kVA_base/X_eq_fault*100               // Short circuit kVA((kVA)
I_SC = kVA_SC/(3**0.5*kV_trans_hv)             // Short circuit current(A)

// Results
disp("PART III - EXAMPLE : 1.4 : SOLUTION :-")
printf("\nShort circuit current = %.f A \n", I_SC)
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more precision here")
