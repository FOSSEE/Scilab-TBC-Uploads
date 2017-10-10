// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 4: UNSYMMETRICAL FAULTS IN POWER SYSTEMS

// EXAMPLE : 4.11 :
// Page number 520-521
clear ; clc ; close ; // Clear the work space and console

// Given data
n = 6.0       // Number of alternator
kV_A = 6.6    // Alternator rating(kV)
X_1 = 0.9     // Positive sequence reactance(ohm)
X_2 = 0.72    // Negative sequence reactance(ohm)
X_0 = 0.3     // Zero sequence reactance(ohm)
Z_n = 0.2     // Resistance of grounding resistor(ohm)

// Calculations
E_a = kV_A*1000/3**0.5               // Phase voltage(V)
// Case(a)
Z_1_a = %i*X_1/n                     // Positive sequence impedance when alternators are in parallel(ohm)
Z_2_a = %i*X_2/n                     // Negative sequence impedance when alternators are in parallel(ohm)
Z_0_a = %i*X_0/n                     // Zero sequence impedance when alternators are in parallel(ohm)
I_a_a = 3*E_a/(Z_1_a+Z_2_a+Z_0_a)    // Fault current assuming 'a' phase to be fault(A)
// Case(b)
Z_0_b = 3*Z_n+%i*X_0                 // Zero sequence impedance(ohm)
I_a_b = 3*E_a/(Z_1_a+Z_2_a+Z_0_b)    // Fault current(A)
// Case(c)
Z_0_c = %i*X_0                       // Zero sequence impedance(ohm)
I_a_c = 3*E_a/(Z_1_a+Z_2_a+Z_0_c)    // Fault current(A)

// Results
disp("PART III - EXAMPLE : 4.11 : SOLUTION :-")
printf("\nCase(a): Fault current if all alternator neutrals are solidly grounded, I_a = %.f A", imag(I_a_a))
printf("\nCase(b): Fault current if one alternator neutral is grounded & others isolated, I_a = %.1f∠%.1f° A", abs(I_a_b),phasemag(I_a_b))
printf("\nCase(c): Fault current if one alternator neutral is solidly grounded & others isolated, I_a = %.2fj A\n", imag(I_a_c))
printf("\nNOTE: ERROR: Calculation mistakes in the textbook solution")
