// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 1: SYMMETRICAL SHORT CIRCUIT CAPACITY CALCULATIONS

// EXAMPLE : 1.7 :
// Page number 471-472
clear ; clc ; close ; // Clear the work space and console

// Given data
MVA_G1 = 50.0         // Generator rating(MVA)
kV_G1 = 15.0          // Voltage rating of generator(kV)
X_G1 = 0.2            // Reactance of generator(p.u)
MVA_G2 = 25.0         // Generator rating(MVA)
kV_G2 = 15.0          // Voltage rating of generator(kV)
X_G2 = 0.2            // Reactance of generator(p.u)
kV_T = 66.0           // Voltage rating of transformer(kV)
X_T = 0.1             // Reactance of transformer(p.u)
kV_fault = 66.0       // Voltage at fault occurence(kV)
kv_base = 69.0        // Base voltage(kV)
MVA_base = 100.0      // Base MVA

// Calculations
X_d_G1 = X_G1*MVA_base/MVA_G1             // Sub-transient reactance referred to 100 MVA(p.u)
E_G1 = kV_fault/kv_base                   // Voltage(p.u)
X_d_G2 = X_G2*MVA_base/MVA_G2             // Sub-transient reactance referred to 100 MVA(p.u)
E_G2 = kV_fault/kv_base                   // Voltage(p.u)
X_net = X_d_G1*X_d_G2/(X_d_G1+X_d_G2)     // Net sub-transient reactance(p.u)
E_g = (E_G1+E_G2)/2                       // Net voltage(p.u). NOTE: Not sure how this comes
I_fault = E_g/(%i*(X_net+X_T))            // Sub-transient fault current(p.u)

// Results
disp("PART III - EXAMPLE : 1.7 : SOLUTION :-")
printf("\nSub-transient fault current = %.3fj p.u \n", imag(I_fault))
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more precision here")
