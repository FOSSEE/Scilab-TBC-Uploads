// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 4: UNSYMMETRICAL FAULTS IN POWER SYSTEMS

// EXAMPLE : 4.3 :
// Page number 512-513
clear ; clc ; close ; // Clear the work space and console

// Given data
kVA = 10000.0                  // Alternator rating(kVA)
Z_g1 = complex(0.5,4.7)        // Positive sequence impedance(ohm/phase)
Z_g2 = complex(0.2,0.6)        // Negative sequence impedance(ohm/phase)
Z_g0 = complex(0,0.43)         // Zero sequence impedance(ohm/phase)
Z_l1 = complex(0.36,0.25)      // Impedance(ohm)
Z_l2 = complex(0.36,0.25)      // Impedance(ohm)
Z_l0 = complex(2.9,0.95)       // Impedance(ohm)
V = 6600.0                     // Voltage(V)

// Calculations
a = exp(%i*120.0*%pi/180)                             // Operator
// Case(a)
E_a = V/3**0.5                                        // Phase voltage(V)
Z_1 = Z_g1+Z_l1                                       // Z1 upto the point of fault(ohm)
Z_2 = Z_g2+Z_l2                                       // Z2 upto the point of fault(ohm)
Z_0 = Z_g0+Z_l0                                       // Z0 upto the point of fault(ohm)
I_a = 3*E_a/(Z_1+Z_2+Z_0)                             // Fault current(A)
// Case(b)
I_a0 = abs(I_a)/3                                     // Zero sequence current of line a(A)
I_a1 = abs(I_a)/3                                     // Positive sequence current of line a(A)
I_a2 = abs(I_a)/3                                     // Negative sequence current of line a(A)
I_b0 = I_a0                                           // Zero sequence current of line b(A)
I_b1 = a**2*I_a1                                      // Positive sequence current of line b(A)
I_b2 = a*I_a2                                         // Negative sequence current of line b(A)
I_c0 = I_a0                                           // Zero sequence current of line c(A)
I_c1 = a*I_a1                                         // Positive sequence current of line c(A)
I_c2 = a**2*I_a2                                      // Negative sequence current of line c(A)
// Case(c)
V_b = E_a/(Z_1+Z_2+Z_0)*((a**2-a)*Z_2+(a**2-1)*Z_0)   // Voltage of the line b(V)
V_c = E_a/(Z_1+Z_2+Z_0)*((a-a**2)*Z_2+(a-1)*Z_0)      // Voltage of the line c(V)

// Results
disp("PART III - EXAMPLE : 4.3 : SOLUTION :-")
printf("\nCase(a): Fault current, |I_a| = %.f A", abs(I_a))
printf("\nCase(b): Zero sequence current of line a, I_a0 = %.f A", I_a0)
printf("\n         Positive sequence current of line a, I_a1 = %.f A", I_a1)
printf("\n         Negative sequence current of line a, I_a2 = %.f A", I_a2)
printf("\n         Zero sequence current of line b, I_b0 = %.f A", I_b0)
printf("\n         Positive sequence current of line b, I_b1 = (%.1f%.1fj) A", real(I_b1),imag(I_b1))
printf("\n         Negative sequence current of line b, I_b2 = (%.1f+%.1fj) A", real(I_b2),imag(I_b2))
printf("\n         Zero sequence current of line c, I_c0 = %.f A", I_c0)
printf("\n         Positive sequence current of line c, I_c1 = (%.1f+%.1fj) A", real(I_c1),imag(I_c1))
printf("\n         Negative sequence current of line c, I_c2 = (%.1f%.1fj) A", real(I_c2),imag(I_c2))
printf("\nCase(c): Voltage of the sound line to earth at fault, |V_b| = %.f V", abs(V_b))
printf("\n         Voltage of the sound line to earth at fault, |V_c| = %.f V\n", abs(V_c))
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more precision here")
