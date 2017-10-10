// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 1: SYMMETRICAL SHORT CIRCUIT CAPACITY CALCULATIONS

// EXAMPLE : 1.2 :
// Page number 467-468
clear ; clc ; close ; // Clear the work space and console

// Given data
kV = 33.0                   // Transmission line operating voltage(kV)
R = 5.0                     // Transmission line resistance(ohm)
X = 20.0                    // Transmission line reactance(ohm)
kVA_tr = 5000.0             // Rating of step-up transformer(kVA)
X_tr = 6.0                  // Reactance of transformer(%)
kVA_A = 10000.0             // Rating of alternator A(kVA)
X_A = 10.0                  // Reactance of alternator A(%)
kVA_B = 5000.0              // Rating of alternator B(kVA)
X_B = 7.5                   // Reactance of alternator B(%)

// Calculations
kVA_base = kVA_A                                      // Base rating(kVA)
X_gen_A = X_A*kVA_base/kVA_A                          // Reactance of generator A(%)
X_gen_B = X_B*kVA_base/kVA_B                          // Reactance of generator B(%)
X_trans = X_tr*kVA_base/kVA_tr                        // Reactance of transformer(%)
X_per = kVA_base*X/(10*kV**2)                         // X(%)
R_per = kVA_base*R/(10*kV**2)                         // R(%)
Z_F1 = (X_gen_A*X_gen_B/(X_gen_A+X_gen_B))+X_trans    // Impedance upto fault(%)
kVA_F1 = kVA_base*(100/Z_F1)                          // Short-circuit kVA fed into the fault(kVA)
R_per_F2 = R_per                                      // R(%)
X_per_F2 = X_per+Z_F1                                 // X(%)
Z_F2 = (R_per_F2**2+X_per_F2**2)**0.5                 // Total impedance upto F2(%)
kVA_F2 = kVA_base*(100/Z_F2)                          // Short-circuit kVA fed into the fault at F2(kVA)

// Results
disp("PART III - EXAMPLE : 1.2 : SOLUTION :-")
printf("\nCase(a): kVA at a short-circuit fault between phases at the HV terminal of transformers = %.f kVA", kVA_F1)
printf("\nCase(b): kVA at a short-circuit fault between phases at load end of transmission line = %.f kVA \n", kVA_F2)
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more precision here & approximation in textbook")
