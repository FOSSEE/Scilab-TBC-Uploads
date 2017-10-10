// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 4: UNSYMMETRICAL FAULTS IN POWER SYSTEMS

// EXAMPLE : 4.7 :
// Page number 516-518
clear ; clc ; close ; // Clear the work space and console

// Given data
MVA_G1 = 40.0      // Generator rating(MVA)
kV_G1 = 13.2       // Generator voltage(kV)
X_st_G1 = 0.15     // Sub-transient reactance(p.u)
X_2_G1 = 0.15      // Negative sequence reactance(p.u)
X_0_G1 = 0.08      // Zero sequence reactance(p.u)
MVA_G3 = 60.0      // Generator rating(MVA)
kV_G3 = 13.8       // Generator voltage(kV)
X_st_G3 = 0.20     // Sub-transient reactance(p.u)
X_2_G3 = 0.20      // Negative sequence reactance(p.u)
X_0_G3 = 0.08      // Zero sequence reactance(p.u)
MVA_T1 = 40.0      // Transformer rating(MVA)
kV_lv_T1 = 13.8    // Transformer low voltage(kV)
kV_hv_T1 = 138     // Transformer high voltage(kV)
X_1_T1 = 0.10      // Positive sequence reactance(p.u)
X_2_T1 = 0.10      // Negative sequence reactance(p.u)
X_0_T1 = 0.08      // Zero sequence reactance(p.u)
MVA_T5 = 30.0      // Transformer rating(MVA)
kV_lv_T5 = 13.8    // Transformer low voltage(kV)
kV_hv_T5 = 138     // Transformer high voltage(kV)
X_1_T5 = 0.10      // Positive sequence reactance(p.u)
X_2_T5 = 0.10      // Negative sequence reactance(p.u)
X_0_T5 = 0.08      // Zero sequence reactance(p.u)
X_neutral = 0.05    // Reactance of reactor connected to generator neutral(p.u)

// Calculations
MVA_base = 100.0                                                  // Base MVA
kV_line = 138.0                                                   // Base voltage for line(kV)
kV_G = 13.8                                                       // Base voltage for generator(kV)
X_st_G1_pu = %i*X_st_G1*(kV_G1/kV_G)**2*MVA_base/MVA_G1           // Impedance of G1 & G2(p.u)
X_2_G1_pu = %i*X_2_G1*(kV_G1/kV_G)**2*MVA_base/MVA_G1             // Impedance of G1 & G2(p.u)
X_g0_G1_pu = %i*X_0_G1*(kV_G1/kV_G)**2*MVA_base/MVA_G1            // Impedance of G1 & G2(p.u)
X_gn_G1_pu = %i*X_neutral*(kV_G1/kV_G)**2*MVA_base/MVA_G1         // Impedance of G1 & G2(p.u)
X_st_G3_pu = %i*X_st_G3*(kV_G3/kV_G)**2*MVA_base/MVA_G3           // Impedance of G3(p.u)
X_2_G3_pu = %i*X_2_G3*(kV_G3/kV_G)**2*MVA_base/MVA_G3             // Impedance of G3(p.u)
X_g0_G3_pu = %i*X_0_G3*(kV_G3/kV_G)**2*MVA_base/MVA_G3            // Impedance of G3(p.u)
X_gn_G3_pu = %i*X_neutral*(kV_G3/kV_G)**2*MVA_base/MVA_G3         // Impedance of G3(p.u)
X_1_T1_pu = %i*X_1_T1*MVA_base/MVA_T1                             // Impedance of T1,T2,T3 & T4(p.u)
X_2_T1_pu = %i*X_2_T1*MVA_base/MVA_T1                             // Impedance of T1,T2,T3 & T4(p.u)
X_0_T1_pu = %i*X_0_T1*MVA_base/MVA_T1                             // Impedance of T1,T2,T3 & T4(p.u)
X_1_T5_pu = %i*X_1_T5*MVA_base/MVA_T5                             // Impedance of T5 & T6(p.u)
X_2_T5_pu = %i*X_2_T5*MVA_base/MVA_T5                             // Impedance of T5 & T6(p.u)
X_0_T5_pu = %i*X_0_T5*MVA_base/MVA_T5                             // Impedance of T5 & T6(p.u)
X_1_line_20 = %i*20.0*100/kV_line**2                              // Impedance of 20 ohm line(p.u)
X_2_line_20 = %i*20.0*100/kV_line**2                              // Impedance of 20 ohm line(p.u)
X_0_line_20 = 3.0*X_1_line_20                                     // Impedance of 20 ohm line(p.u)
X_1_line_10 = %i*10.0*100/kV_line**2                              // Impedance of 10 ohm line(p.u)
X_2_line_10 = %i*10.0*100/kV_line**2                              // Impedance of 10 ohm line(p.u)
X_0_line_10 = 3.0*X_1_line_10                                     // Impedance of 10 ohm line(p.u)
// Positive,negative and zero sequence network
Z_1_1 = X_1_T1_pu+X_1_T1_pu+X_1_line_20                           // Impedance(p.u)
Z_2_1 = X_1_T1_pu+X_1_T5_pu+X_1_line_10                           // Impedance(p.u)
Z_3_1 = X_1_T1_pu+X_1_T5_pu+X_1_line_10                           // Impedance(p.u)
Z_4_1 = Z_1_1*Z_2_1/(Z_1_1+Z_2_1+Z_3_1)                           // Impedance after star-delta transformation(p.u)
Z_5_1 = Z_3_1*Z_1_1/(Z_1_1+Z_2_1+Z_3_1)                           // Impedance after star-delta transformation(p.u)
Z_6_1 = Z_3_1*Z_2_1/(Z_1_1+Z_2_1+Z_3_1)                           // Impedance after star-delta transformation(p.u)
Z_7_1 = X_st_G1_pu+Z_4_1                                          // Impedance(p.u)
Z_8_1 = X_st_G1_pu+Z_5_1                                          // Impedance(p.u)
Z_9_1 = Z_7_1*Z_8_1/(Z_7_1+Z_8_1)                                 // Impedance in parallel(p.u). Refer Fig E4.14(e) & E4.14(f)
Z_10_1 = Z_9_1+Z_6_1                                              // Impedance(p.u). Refer Fig E4.14(f) & E4.14(g)
Z_11_1 = Z_10_1*X_st_G3_pu/(Z_10_1+X_st_G3_pu)                    // Impedance in parallel(p.u). Refer Fig E4.14(g) & E4.14(h)
Z_1 = Z_11_1                                                      // Positive sequence impedance(p.u)
Z_2 = Z_1                                                         // Negative sequence impedance(p.u)
Z_0 = X_g0_G3_pu+3.0*X_gn_G3_pu                                   // Zero sequence impedance(p.u)
E_g = 1.0                                                         // Voltage(p.u)
I_f_pu = 3*E_g/(Z_1+Z_2+Z_0)                                      // L-G fault current(p.u)
I_f = abs(I_f_pu)*MVA_base*1000/(3**0.5*kV_G)                     // Actual fault current(A)
MVA_fault = abs(I_f_pu)*MVA_base                                  // Fault MVA

// Results
disp("PART III - EXAMPLE : 4.7 : SOLUTION :-")
printf("\nFault current for a L-G fault at C = %.f A\n", I_f)
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more precision here")
