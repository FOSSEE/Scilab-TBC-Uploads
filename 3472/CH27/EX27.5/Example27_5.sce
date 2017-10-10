// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 1: SYMMETRICAL SHORT CIRCUIT CAPACITY CALCULATIONS

// EXAMPLE : 1.5 :
// Page number 470-471
clear ; clc ; close ; // Clear the work space and console

// Given data
MVA_G1 = 100.0            // Generator rating(MVA)
X_G1 = 30.0               // Reactance of generator(%)
MVA_G2 = 150.0            // Generator rating(MVA)
X_G2 = 20.0               // Reactance of generator(%)
MVA_G3 = 200.0            // Generator rating(MVA)
X_G3 = 15.0               // Reactance of generator(%)
MVA_T1 = 150.0            // Transformer rating(MVA)
X_T1 = 10.0               // Reactance of transformer(%)
MVA_T2 = 175.0            // Transformer rating(MVA)
X_T2 = 8.0                // Reactance of transformer(%)
MVA_T3 = 200.0            // Transformer rating(MVA)
X_T3 = 6.0                // Reactance of transformer(%)
MVA_T4 = 100.0            // Transformer rating(MVA)
X_T4 = 5.0                // Reactance of transformer(%)
MVA_T5 = 150.0            // Transformer rating(MVA)
X_T5 = 5.0                // Reactance of transformer(%)
Z_L1 = complex(0.5,1.0)   // Line impedance(ohm/km)
L1 = 100.0                // Line length(km)
Z_L2 = complex(0.4,1.2)   // Line impedance(ohm/km)
L2 = 50.0                 // Line length(km)
Z_L3 = complex(0.4,1.2)   // Line impedance(ohm/km)
L3 = 50.0                 // Line length(km)
Z_L4 = complex(0.3,1.0)   // Line impedance(ohm/km)
L4 = 60.0                 // Line length(km)
kV_L1 = 220.0             // Voltage towards line(kV)
kV_L2 = 220.0             // Voltage towards line(kV)
kV_L3 = 132.0             // Voltage towards line(kV)
kV_L4 = 132.0             // Voltage towards line(kV)

// Calculations
MVA_base = 200.0                         // Base rating(MVA)
X_d_G1 = (MVA_base/MVA_G1)*(X_G1/100)    // Reactance of generator(p.u)
X_d_G2 = (MVA_base/MVA_G2)*(X_G2/100)    // Reactance of generator(p.u)
X_d_G3 = (MVA_base/MVA_G3)*(X_G3/100)    // Reactance of generator(p.u)
X_T_1 = (MVA_base/MVA_T1)*(X_T1/100)     // Reactance of transformer(p.u)
X_T_2 = (MVA_base/MVA_T2)*(X_T2/100)     // Reactance of transformer(p.u)
X_T_3 = (MVA_base/MVA_T3)*(X_T3/100)     // Reactance of transformer(p.u)
X_T_4 = (MVA_base/MVA_T4)*(X_T4/100)     // Reactance of transformer(p.u)
X_T_5 = (MVA_base/MVA_T5)*(X_T5/100)     // Reactance of transformer(p.u)
Z_L1_base = kV_L1**2/MVA_base            // L1 base impedance(ohm)
Z_L_1 = Z_L1*L1/Z_L1_base                // Line impedance(p.u)
Z_L2_base = kV_L2**2/MVA_base            // L2 base impedance(ohm)
Z_L_2 = Z_L2*L2/Z_L2_base                // Line impedance(p.u)
Z_L3_base = kV_L3**2/MVA_base            // L3 base impedance(ohm)
Z_L_3 = Z_L3*L3/Z_L3_base                // Line impedance(p.u)
Z_L4_base = kV_L4**2/MVA_base            // L4 base impedance(ohm)
Z_L_4 = Z_L4*L4/Z_L4_base                // Line impedance(p.u)

// Results
disp("PART III - EXAMPLE : 1.5 : SOLUTION :-")
printf("\np.u values of the single line diagram are as below")
printf("\nGenerators p.u reactances :")
printf("\n X_d_G1 = %.1f p.u", X_d_G1)
printf("\n X_d_G2 = %.3f p.u", X_d_G2)
printf("\n X_d_G3 = %.2f p.u", X_d_G3)
printf("\nTransformers p.u reactances :")
printf("\n X_T1 = %.3f p.u", X_T_1)
printf("\n X_T2 = %.4f p.u", X_T_2)
printf("\n X_T3 = %.2f p.u", X_T_3)
printf("\n X_T4 = %.1f p.u", X_T_4)
printf("\n X_T5 = %.3f p.u", X_T_5)
printf("\nLines p.u impedances :")
printf("\n Z_L1 = (%.3f + %.3fj) p.u", real(Z_L_1),imag(Z_L_1))
printf("\n Z_L2 = (%.3f + %.3fj) p.u", real(Z_L_2),imag(Z_L_2))
printf("\n Z_L3 = (%.3f + %.3fj) p.u", real(Z_L_3),imag(Z_L_3))
printf("\n Z_L4 = (%.3f + %.3fj) p.u \n", real(Z_L_4),imag(Z_L_4))
printf("\nNOTE: ERROR: (1). Reactance of T2 is 8 percent & not 1 percent as mentioned in the textbook problem statement")
printf("\n             (2). Several calculation mistakes in the textbook")
