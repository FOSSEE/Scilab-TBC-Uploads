// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 4: UNSYMMETRICAL FAULTS IN POWER SYSTEMS

// EXAMPLE : 4.4 :
// Page number 513-514
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 11000.0                    // Alternator voltage(V)
kVA = 50000.0                  // Alternator rating(kVA)
Z_l1 = complex(0.4,0.7)        // Positive sequence impedance of feeder(ohm)
Z_l2 = complex(0.4,0.7)        // Negative sequence impedance of feeder(ohm)
Z_l0 = complex(0.7,3.0)        // Zero sequence impedance of feeder(ohm)
Z_g1_A = complex(0,0.6)        // Positive sequence reactance(ohm)
Z_g1_B = complex(0,0.6)        // Positive sequence reactance(ohm)
Z_g2_A = complex(0,0.4)        // Negative sequence reactance(ohm)
Z_g2_B = complex(0,0.4)        // Negative sequence reactance(ohm)
Z_g0_A = complex(0,0.2)        // Zero sequence reactance(ohm)
Z_g0_B = complex(0,0.2)        // Zero sequence reactance(ohm)
Z_n_A = complex(0,0.2)         // Neutral reactance(ohm)
Z_n_B = complex(0,0.2)         // Neutra reactance(ohm)

// Calculations
a = exp(%i*120.0*%pi/180)                    // Operator
Z_g1 = 1.0/((1/Z_g1_A)+(1/Z_g1_B))           // Equivalent positive sequence impedance(ohm)
Z_g2 = 1.0/((1/Z_g2_A)+(1/Z_g2_B))           // Equivalent negative sequence impedance(ohm)
Z_g0 = 1.0/((1/Z_g0_A)+(1/Z_g0_B))           // Equivalent zero sequence impedance(ohm)
Z_n = 1.0/((1/Z_n_A)+(1/Z_n_B))              // Equivalent neutral impedance(ohm)
Z_1 = Z_l1+Z_g1                              // Positive sequence impedance(ohm)
Z_2 = Z_l2+Z_g2                              // Negative sequence impedance(ohm)
Z_0 = Z_l0+Z_g0+3*Z_n                        // Zero sequence impedance(ohm)
Z = Z_0*Z_2/(Z_0+Z_2)                        // Impedance(ohm)
E_R = V/3**0.5                               // Phase voltage(V)
I_R1 = E_R/(Z_1+Z)                           // Postive sequence current(A)
I_R2 = -Z*I_R1/Z_2                           // Negative sequence current(A)
I_R0 = -Z*I_R1/Z_0                           // Zero sequence current(A)
I_R = I_R0+I_R1+I_R2                         // Fault current in line(A)
I_Y = I_R0+a**2*I_R1+a*I_R2                  // Fault current in line(A)
I_B = I_R0+a*I_R1+a**2*I_R2                  // Fault current in line(A)
I_earth = 3.0*I_R0                           // Current through earth reactance(A)
V_neutral = abs(I_earth*Z_n)                 // Magnitude of potential above earth attained by generator neutral(V)

// Results
disp("PART III - EXAMPLE : 4.4 : SOLUTION :-")
printf("\nFault current in the line R, I_R = %.f A", abs(I_R))
printf("\nFault current in the line Y, I_Y = (%.f%.fj) A", real(I_Y),imag(I_Y))
printf("\nFault current in the line B, I_B = (%.f+%.fj) A", real(I_B),imag(I_B))
printf("\nPotential above earth attained by the alternator neutrals = %.f V\n", V_neutral)
printf("\nNOTE: ERROR: Voltage is 11000 not 11000 kV as given in textbook statement")
printf("\n      Changes in the obtained answer from that of textbook is due to more precision here")
