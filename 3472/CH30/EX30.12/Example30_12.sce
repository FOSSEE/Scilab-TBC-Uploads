// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 4: UNSYMMETRICAL FAULTS IN POWER SYSTEMS

// EXAMPLE : 4.12 :
// Page number 521-522
clear ; clc ; close ; // Clear the work space and console

// Given data
MVA_A = 30.0        // Alternator rating(MVA)
kV_A = 6.6          // Alternator rating(kV)
X_G = 10.0          // Reactance of alternator(%)
kV_lv_T = 6.6       // Transformer lv side rating(kV) 
kV_hv_T = 33.0      // Transformer hv side rating(kV) 
X_T = 6.0           // Reactance of transformer(%)
kV_line = 33.0      // Transmission line voltage(kV)
X_line = 4.0        // Transmission line reactance(ohm)
X_g2 = 70.0         // Negative sequence reactance is 70% of +ve sequence reactance of generator(%)

// Calculations
MVA_base = 30.0                          // Base MVA
kV_base = 6.6                            // Base kV
Z_base = kV_base**2/MVA_base             // Base impedance(ohm)
Z_g1 = %i*Z_base*X_G/100                 // Positive sequence impedance of alternator(ohm)
Z_T1 = %i*Z_base*X_T/100                 // Positive sequence impedance of transformer(ohm)
Z_L1 = %i*(kV_base/kV_line)**2*X_line    // Positive sequence impedance of transmission line(ohm)
Z_g2 = X_g2/100*Z_g1                     // Negative sequence impedance of alternator(ohm)
Z_T2 = %i*Z_base*X_T/100                 // Negative sequence impedance of transformer(ohm)
Z_T0 = %i*Z_base*X_T/100                 // Zero sequence impedance of transformer(ohm)
Z_L2 = Z_L1                              // Negative sequence impedance of transmission line(ohm)
Z_1 = Z_g1+Z_T1+Z_L1+Z_T1                // Positive sequence impedance(ohm)
Z_2 = Z_g2+Z_T2+Z_L2+Z_T2                // Negative sequence impedance(ohm)
Z_0 = Z_T0                               // Zero sequence impedance(ohm)
E_a = kV_base*1000/3**0.5                // Base voltage(V)
// Case(a)
I_sc = E_a/Z_1                           // Fault current if all 3 phases short circuited(A)
// Case(b)
I_a = 3*E_a/(Z_1+Z_2+Z_0)                // Fault current if single line is grounded assuming 'a' to be grounded(A)
// Case(c)
I_b = %i*3**0.5*E_a/(Z_1+Z_2)            // Fault current for a short circuit between two lines(A)
I_c = -%i*3**0.5*E_a/(Z_1+Z_2)           // Fault current for a short circuit between two lines(A)

// Results
disp("PART III - EXAMPLE : 4.12 : SOLUTION :-")
printf("\nCase(a): Fault current if all 3 phases short circuited, I_sc = %.f∠%.f° A", abs(I_sc),phasemag(I_sc))
printf("\nCase(b): Fault current if single line is grounded, I_a = %.fj A", imag(I_a))
printf("\nCase(c): Fault current for a short circuit between two lines, I_b = %.f A", real(I_b))
printf("\n         Fault current for a short circuit between two lines, I_c = %.f A\n", real(I_c))
printf("\nNOTE: ERROR: (1).Calculation mistake in Z_2 in the textbook solution")
printf("\n             (2).Transformer reactance is 6 percent, not 5 percent as in problem statement")
