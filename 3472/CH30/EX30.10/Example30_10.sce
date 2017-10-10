// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 4: UNSYMMETRICAL FAULTS IN POWER SYSTEMS

// EXAMPLE : 4.10 :
// Page number 519-520
clear ; clc ; close ; // Clear the work space and console

// Given data
MVA_A = 30.0        // Alternator rating(MVA)
kV_A = 11.0         // Alternator rating(kV)
X_1 = 2.5           // Reactance to positive sequence current(ohm)
X_2 = 0.8*X_1       // Reactance to negative sequence current(ohm)
X_0 = 0.3*X_1       // Reactance to zero sequence current(ohm)

// Calculations
// Case(a)
a = exp(%i*120.0*%pi/180)                 // Operator
Z_1 = %i*X_1                              // Positive sequence impedance(ohm)
Z_2 = %i*X_2                              // Negative sequence impedance(ohm)
Z_0 = %i*X_0                              // Zero sequence impedance(ohm)
Z_02 = Z_0*Z_2/(Z_0+Z_2)                  // Impedance(ohm)
E_a = kV_A*1000/3**0.5                    // Phase voltage(V)
I_a1 = E_a/(Z_1+Z_02)                     // Positive sequence current(A)
I_a2 = -Z_0/(Z_0+Z_2)*I_a1                // Negative sequence current(A)
I_a0 = -Z_2/(Z_0+Z_2)*I_a1                // Zero sequence current(A)
I_0 = I_a0                                // Zero sequence current(A)
I_a = I_a0+I_a1+I_a2                      // Line current(A)
I_b = I_0+a**2*I_a1+a*I_a2                // Line current(A)
I_c = I_0+a*I_a1+a**2*I_a2                // Line current(A)
// Case(b)
I_n = 3*abs(I_0)                          // Current through ground(A)
// Case(c)
V_a2 = Z_02*I_a1                          // Negative sequence voltage(V)
V_a = 3*abs(V_a2)                         // Voltage of healthy phase to neutral(V)

// Results
disp("PART III - EXAMPLE : 4.10 : SOLUTION :-")
printf("\nCase(a): Currents in the faulted phase are")
printf("\n         I_a = %.f A", abs(I_a))
printf("\n         I_b = %.f∠%.1f° A", abs(I_b),phasemag(I_b))
printf("\n         I_c = %.f∠%.1f° A", abs(I_c),phasemag(I_c))
printf("\nCase(b): Current through ground, I_n = %.f A", I_n)
printf("\nCase(c): Voltage of healthy phase to neutral, V_a = %.f V\n", V_a)
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more precision here")
