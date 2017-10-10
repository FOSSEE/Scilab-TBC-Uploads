// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 4: UNSYMMETRICAL FAULTS IN POWER SYSTEMS

// EXAMPLE : 4.5 :
// Page number 514-515
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 6600.0             // Alternator voltage(V)
kVA = 10000.0          // Alternator rating(kVA)
x_1 = 15.0             // Reactance to positive sequence current(%)
x_2 = 75.0             // Reactance to negative sequence current(%)
x_0 = 30.0             // Reactance to zero sequence current(%)
R_earth = 0.3          // Earth resistance(ohm)

// Calculations
a = exp(%i*120.0*%pi/180)               // Operator
E_g = V/3**0.5                          // Phase voltage(V)
// Case(a)
I = kVA*1000/(3**0.5*V)                 // Full load current of each alternator(A)
X = x_1*V/(100*3**0.5*I)                // Positive sequence reactance(ohm)
Z_g1 = %i*X                             // Equivalent positive sequence impedance(ohm)
Z_g2 = Z_g1*x_2/100                     // Equivalent negative sequence impedance(ohm)
Z_g0 = Z_g1*x_0/100                     // Equivalent zero sequence impedance(ohm)
Z_1 = Z_g1/3                            // Positive sequence impedance(ohm)
Z_2 = Z_g2/3                            // Negative sequence impedance(ohm)
Z_0 = Z_g0/3                            // Zero sequence impedance(ohm)
I_a_a = 3*E_g/(Z_1+Z_2+Z_0)             // Fault current(A)
// Case(b)
Z_0_b = Z_g0                            // Impedance(ohm)
I_a_b = 3*E_g/(Z_1+Z_2+Z_0_b)           // Fault current(A)
// Case(c)
Z_0_c = R_earth*3+Z_g0                  // Impedance(ohm)
I_a_c = 3*E_g/(Z_1+Z_2+Z_0_c)           // Fault current(A)

// Results
disp("PART III - EXAMPLE : 4.5 : SOLUTION :-")
printf("\nCase(a): Fault current if all the alternator neutrals are solidly earthed, I_a = %.fj A", imag(I_a_a))
printf("\nCase(b): Fault current if only one of the alternator neutrals is solidly earthed & others isolated = %.fj A", imag(I_a_b))
printf("\nCase(c): Fault current if one of alternator neutrals is earthed through resistance & others isolated = %.f A\n", abs(I_a_c))
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more precision here")
