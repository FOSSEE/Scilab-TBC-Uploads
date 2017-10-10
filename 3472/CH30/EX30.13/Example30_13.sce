// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 4: UNSYMMETRICAL FAULTS IN POWER SYSTEMS

// EXAMPLE : 4.13 :
// Page number 522
clear ; clc ; close ; // Clear the work space and console

// Given data
kV = 6.9          // Alternator rating(kV)
MVA = 10.0        // Alternator rating(MVA)
X_st = 0.15       // Sub-transient reactance(p.u)
X_2 = 0.15        // Negative sequence reactance(p.u)
X_0 = 0.05        // Zero sequence reactance(p.u)
X = 0.397         // Grounding reactor(ohm)

// Calculations
MVA_base = 10.0                         // Base MVA
kV_base = 6.9                           // Base kV
Z_base = kV_base**2/MVA_base            // Base impedance(ohm)
Z_n = X/Z_base                          // Grounding reactor(p.u)
Z_1 = %i*X_st                           // Positive sequence impedance(p.u)
Z_2 = %i*X_2                            // Negative sequence impedance(p.u)
Z_0 = %i*(X_0+3*Z_n)                    // Zero sequence impedance(p.u)
E_a = 1.0                               // Phase voltage(p.u)
I_a_pu = 3*E_a/(Z_1+Z_2+Z_0)            // Sub-transient current in the faulty phase(p.u)
I_base = kV_base*1000/(3**0.5*Z_base)   // Base current(A)
I_a = abs(I_a_pu)*I_base                // Sub-transient current in the faulty phase(A)

// Results
disp("PART III - EXAMPLE : 4.13 : SOLUTION :-")
printf("\nSub-transient current in the faulty phase, I_a = %.f A\n", I_a)
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more precision here")
