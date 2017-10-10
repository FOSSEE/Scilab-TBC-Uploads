// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 2: FAULT LIMITING REACTORS

// EXAMPLE : 2.1 :
// Page number 479-480
clear ; clc ; close ; // Clear the work space and console

// Given data
kVA_A = 2500.0           // Rating of alternator A(kVA)
x_A = 8.0                // Reactance of alternator A(%)
kVA_B = 5000.0           // Rating of alternator B(kVA)
x_B = 6.0                // Reactance of alternator B(%)
kVA_CB = 150000.0        // Rating of circuit breaker(kVA)
kVA_T = 10000.0          // Rating of transformer(kVA)
x_T = 7.5                // Reactance of transformer(%)
V = 3300.0               // System voltage(V)

// Calculations
kVA_base = 10000.0                            // Base kVA
X_A = kVA_base/kVA_A*x_A                      // Reactance of generator A(%)
X_B = kVA_base/kVA_B*x_B                      // Reactance of generator B(%)
X_eq = X_A*X_B/(X_A+X_B)                      // Combined reactance of A & B(%)
kVA_SC_G = kVA_base/X_eq*100                  // Short-circuit kVA due to generators(kVA)
kVA_SC_T = kVA_base/x_T*100                   // Short-circuit kVA due to grid supply(kVA)
X = (kVA_base*100/(kVA_CB-kVA_SC_G))-x_T      // Reactance necessary to protect switchgear(%)
I_fl = kVA_base*1000/(3**0.5*V)               // Full load current corresponding to 10000 kVA(A)
X_phase = X*V/(3**0.5*I_fl*100)               // Actual value of reactance per phase(ohm)

// Results
disp("PART III - EXAMPLE : 2.1 : SOLUTION :-")
printf("\nReactance necessary to protect the switchgear = %.3f ohm/phase", X_phase)
