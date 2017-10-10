// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 1: SYMMETRICAL SHORT CIRCUIT CAPACITY CALCULATIONS

// EXAMPLE : 1.3 :
// Page number 468-469
clear ; clc ; close ; // Clear the work space and console

// Given data
kVA_a = 40000.0          // Capacity of transmission line(kVA)
x_a = 10.0               // Reactance of transmission line(%)
kVA_b = 20000.0          // Capacity of transmission line(kVA)
x_b = 5.0                // Reactance of transmission line(%)
kVA_c = 50000.0          // Capacity of transmission line(kVA)
x_c = 20.0               // Reactance of transmission line(%)
kVA_d = 30000.0          // Capacity of transmission line(kVA)
x_d = 15.0               // Reactance of transmission line(%)
kVA_e = 10000.0          // Capacity of transmission line(kVA)
x_e = 6.0                // Reactance of transmission line(%)
kVA_T1 = 150000.0        // Capacity of transformer(kVA)
x_T1 = 10.0              // Reactance of transformer(%)
kVA_T2 = 50000.0         // Capacity of transformer(kVA)
x_T2 = 8.0               // Reactance of transformer(%)
kVA_T3 = 20000.0         // Capacity of transformer(kVA)
x_T3 = 5.0               // Reactance of transformer(%)
kVA_GA = 150000.0        // Capacity of generator(kVA)
x_sA = 90.0              // Synchronous reactance of generator(%)
x_tA = 30.0              // Transient reactance of generator(%)
kVA_GB = 50000.0         // Capacity of generator(kVA)
x_sB = 50.0              // Synchronous reactance of generator(%)
x_tB = 17.5              // Transient reactance of generator(%)
V = 33.0                 // Feeder voltage(kV)

// Calculations
kVA_base = 200000.0                                  // Base rating(kVA)
X_a = kVA_base/kVA_a*x_a                             // Reactance(%)
X_b = kVA_base/kVA_b*x_b                             // Reactance(%)
X_c = kVA_base/kVA_c*x_c                             // Reactance(%)
X_d = kVA_base/kVA_d*x_d                             // Reactance(%)
X_e = kVA_base/kVA_e*x_e                             // Reactance(%)
X_T1 = kVA_base/kVA_T1*x_T1                          // Reactance(%)
X_T2 = kVA_base/kVA_T2*x_T2                          // Reactance(%)
X_T3 = kVA_base/kVA_T3*x_T3                          // Reactance(%)
X_sA = kVA_base/kVA_GA*x_sA                          // Synchronous reactance(%)
X_tA = kVA_base/kVA_GA*x_tA                          // Transient reactance(%)
X_sB = kVA_base/kVA_GB*x_sB                          // Synchronous reactance(%)
X_tB = kVA_base/kVA_GB*x_tB                          // Transient reactance(%)
X_eq_ab = X_a+X_b                                    // Equivalent reactance of transmission lines a & b(%)
X_eq_abc = X_eq_ab*X_c/(X_eq_ab+X_c)                 // Equivalent reactance of transmission line c with series combination of a & b(%)
X_CF = (X_eq_abc+X_sA)*X_d/(X_eq_abc+X_sA+X_d)       // Total reactance b/w sub-station C & F(%)
// Case(i)
X_tr_genA = kVA_base/kVA_GA*x_tA                     // Reactance in transient state of generator A(%)
X_T1_tr = kVA_base/kVA_T1*x_T1                       // Reactance in transient state of transformer T1(%)
X_CF_tr = X_CF                                       // Total reactance in transient state b/w sub-station C & F(%)
X_eq_tAF = X_tr_genA+X_T1_tr+X_CF_tr                 // Equivalent transient reactance from generator A to substation F(%)
X_tr_genB = kVA_base/kVA_GB*x_tB                     // Reactance in transient state of generator B(%)
X_T2_tr = kVA_base/kVA_T2*x_T2                       // Reactance in transient state of transformer T2(%)
X_eq_tBF = X_tr_genB+X_T2_tr                         // Equivalent transient reactance from generator B to substation F(%)
X_eq_tF = X_eq_tAF*X_eq_tBF/(X_eq_tAF+X_eq_tBF)      // Equivalent transient reactance upto substation F(%)
X_eq_tfault = X_eq_tF+X_T3                           // Equivalent transient reactance upto fault point(%)
kVA_t_sc = kVA_base/X_eq_tfault*100                  // Transient short circuit kVA(kVA)
I_t_sc = kVA_t_sc/(3**0.5*V)                         // Transient short circuit rms current(A)
I_t_sc_peak = 2**0.5*I_t_sc                          // Peak value of transient short circuit current(A)
// Case(ii)
X_S_genA = kVA_base/kVA_GA*x_sA                      // Reactance in steady state of generator A(%)
X_eq_SAF = X_S_genA+X_T1+X_CF                        // Equivalent steady state reactance from generator A to substation F(%)
X_eq_SBF = X_sB+X_T2                                 // Equivalent steady state reactance from generator B to substation F(%)
X_eq_SF = X_eq_SAF*X_eq_SBF/(X_eq_SAF+X_eq_SBF)      // Equivalent steady state reactance upto substation F(%)
X_eq_Sfault = X_eq_SF+X_T3                           // Equivalent steady state reactance upto fault point(%)
kVA_S_sc = kVA_base/X_eq_Sfault*100                  // Steady state short circuit kVA(kVA)
I_S_sc = kVA_S_sc/(3**0.5*V)                         // Sustained short circuit rms current(A)
I_S_sc_peak = 2**0.5*I_S_sc                          // Peak value of sustained short circuit current(A)

// Results
disp("PART III - EXAMPLE : 1.3 : SOLUTION :-")
printf("\nCase(i) : Transient short circuit current at X = %.f A (peak value)", I_t_sc_peak)
printf("\nCase(ii): Sustained short circuit current at X = %.f A (peak value) \n", I_S_sc_peak)
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more precision here")
