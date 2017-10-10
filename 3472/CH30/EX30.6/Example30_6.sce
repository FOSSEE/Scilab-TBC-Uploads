// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 4: UNSYMMETRICAL FAULTS IN POWER SYSTEMS

// EXAMPLE : 4.6 :
// Page number 515-516
clear ; clc ; close ; // Clear the work space and console

// Given data
kVA_G = 2000.0          // Generator rating(kVA)
X_G = 10.0              // Generator reactance(%)
kVA_T1 = 2000.0         // Transformer rating(kVA)
lv_T1 = 6.6             // LV side voltage(kV)
hv_T1 = 11.0            // HV side voltage(kV)
X_T1 = 5.0              // Transformer reactance(%)
X_cable = 0.5           // Cable reactance(ohm)
V_cable = 11.0          // Cable voltage(V)
kVA_T2 = 2000.0         // Transformer rating(kVA)
lv_T2 = 6.6             // LV side voltage(kV)
hv_T2 = 11.0            // HV side voltage(kV)
X_T2 = 5.0              // Transformer reactance(%)

// Calculations
a = exp(%i*120.0*%pi/180)                    // Operator
kVA_base = 2000.0                            // Base kVA
kV = 6.6                                     // Base voltage(kV)
X_1 = X_G*kV**2*10/kVA_base                  // 10% reactance at 6.6 kV(ohm)
X_2 = X_T1*kV**2*10/kVA_base                 // 5% reactance at 6.6 kV(ohm)
X_3 = (kV/hv_T1)**2*X_cable                  // 0.5 ohm at 11kV when referred to 6.6kV(ohm)
Z_g1 = %i*X_1                                // Positive sequence impedance of generator(ohm)
Z_g2 = Z_g1*0.7                              // Negative sequence impedance of generator equal to 70% of +ve sequence impedance(ohm)
T1_Z_T1_1 = %i*X_2                           // Positive sequence impedance of transformer(ohm)
T1_Z_T1_2 = %i*X_2                           // Negative sequence impedance of transformer(ohm)
Z_C1 = %i*X_3                                // Positive sequence impedance of cable(ohm)
Z_C2 = %i*X_3                                // Negative sequence impedance of cable(ohm)
T2_Z_T2_1 = %i*X_2                           // Positive sequence impedance of transformer(ohm)
T2_Z_T2_2 = %i*X_2                           // Negative sequence impedance of transformer(ohm)
Z_1 = Z_g1+T1_Z_T1_1+Z_C1+T2_Z_T2_1          // Positive sequence impedance(ohm)
Z_2 = Z_g2+T1_Z_T1_2+Z_C2+T2_Z_T2_2          // Negative sequence impedance(ohm)
Z_0 = %i*X_2                                 // Zero sequence impedance(ohm)
E_a = kV*1000/3**0.5                         // Phase voltage(V)
// Case(a)
I_a1 = E_a/(Z_1+Z_2)                         // Positive sequence current(A)
I_a2 = -I_a1                                 // Negative sequence current(A)
I_a0 = 0                                     // Zero sequence current(A)
I_a = I_a1+I_a2+I_a0                         // Fault current in line a(A)
I_b = (a**2-a)*I_a1                          // Fault current in line b(A)
I_c = -I_b                                   // Fault current in line c(A)
// Case(b)
I_a_b = 3*E_a/(Z_1+Z_2+Z_0)                  // Fault current for line to ground fault(A)

// Results
disp("PART III - EXAMPLE : 4.6 : SOLUTION :-")
printf("\nCase(a): Fault current for line fault are")
printf("\n         I_a = %.f A", abs(I_a))
printf("\n         I_b = %.f A", abs(I_b))
printf("\n         I_c = %.f A", abs(I_c))
printf("\nCase(b): Fault current for line to ground fault, |I_a| = %.f A\n", abs(I_a_b))
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more precision here")
