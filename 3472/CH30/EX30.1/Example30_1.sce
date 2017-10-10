// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 4: UNSYMMETRICAL FAULTS IN POWER SYSTEMS

// EXAMPLE : 4.1 :
// Page number 510-512
clear ; clc ; close ; // Clear the work space and console

// Given data
MVA = 15.0    // Generator rating(MVA)
kV = 6.9      // Generator voltage(kV)
X_1 = 25.0    // Positive sequence reactance(%)
X_2 = 25.0    // Negative sequence reactance(%)
X_0 = 8.0     // Zero sequence reactance(%)
X = 6.0       // Reactor placed in line(%)

// Calculations
a = exp(%i*120.0*%pi/180)                               // Operator
Z_1 = %i*X_1/100                                                  // Positive sequence impedance(p.u)
Z_2 = %i*X_2/100                                                  // Negative sequence impedance(p.u)
Z_g0 = %i*X_0/100                                                 // Impedance(p.u)
Z = %i*X/100                                                      // Impedance(p.u)
Z_0 = Z_g0+3*Z                                                    // Zero sequence impedance(p.u)
E_a = 1.0                                                         // Voltage(p.u)
E_b = a**2*E_a                                                    // Voltage(p.u)
// Case(a)
I_a0_a = 0                                                        // Current(A)
I_a1_a_pu = 1.0/(Z_1+Z_2)                                         // Current(p.u)
I_a1_a = I_a1_a_pu*MVA*1000/(3**0.5*kV)                           // Current(A)
I_a2_a = -I_a1_a                                                  // Current(A)
I_b0_a = 0                                                        // Current(A)
I_b1_a = a**2*I_a1_a                                              // Current(A)
I_b2_a = a*I_a2_a                                                 // Current(A)
I_a_a = I_a1_a+I_a2_a                                             // Line current(A)
I_b_a = I_b1_a+I_b2_a                                             // Line current(A)
I_c_a = -I_b_a                                                    // Line current(A)
I_g_a = 0                                                         // Ground wire current(A)
V_a_a = (E_a-I_a1_a*Z_1-I_a2_a*Z_2-I_a0_a*Z_0)*kV*1000/3**0.5     // Voltage(V)
V_b_a = (a**2*E_a+%i*3**0.5*I_a1_a_pu*Z_1)*kV*1000/3**0.5         // Voltage(V)
V_c_a = V_b_a                                                     // Voltage(V)
// Case(b)
I_a1_b_pu = E_a/(Z_1+(Z_2*Z_0/(Z_2+Z_0)))                         // Current(p.u)
I_a1_b = I_a1_b_pu*MVA*1000/(3**0.5*kV)                           // Current(A)
I_a2_b_pu = -Z_0*Z_2/(Z_2*(Z_0+Z_2))*I_a1_b_pu                    // Current(p.u)
I_a2_b = -Z_0*Z_2/(Z_2*(Z_0+Z_2))*I_a1_b                          // Current(A)
I_a0_b_pu = -Z_0*Z_2/(Z_0*(Z_0+Z_2))*I_a1_b_pu                    // Current(p.u)
I_a0_b = -Z_0*Z_2/(Z_0*(Z_0+Z_2))*I_a1_b                          // Current(A)
I_a_b = I_a0_b+I_a1_b+I_a2_b                                      // Line current(A)
I_b_b = I_a0_b+a**2*I_a1_b+a*I_a2_b                               // Line current(A)
I_c_b = I_a0_b+a*I_a1_b+a**2*I_a2_b                               // Line current(A)
I_0_b = 3*I_a0_b                                                  // Current in the ground resistor(A)
V_a_b_pu = E_a-I_a1_b_pu*Z_1-I_a2_b_pu*Z_2-I_a0_b_pu*Z_0          // Voltage(p.u)
V_a_b = abs(V_a_b_pu)*kV*1000/(3**0.5)                            // Voltage(V)
V_b_b = 0                                                         // Voltage(V)
V_c_b = 0                                                         // Voltage(V)

// Results
disp("PART III - EXAMPLE : 4.1 : SOLUTION :-")
printf("\nCase(a): Initial symmetrical rms line current when ground is not involved in fault, I_a = %.f A", abs(I_a_a))
printf("\n         Initial symmetrical rms line current when ground is not involved in fault, I_b = %.f A", real(I_b_a))
printf("\n         Initial symmetrical rms line current when ground is not involved in fault, I_c = %.f A", real(I_c_a))
printf("\n         Ground wire current = %.f A", I_g_a)
printf("\n         Line to neutral voltage, V_a = %.f V", real(V_a_a))
printf("\n         Line to neutral voltage, V_b = %.f V", real(V_b_a))
printf("\n         Line to neutral voltage, V_c = %.f V", real(V_c_a))
printf("\nCase(b): Initial symmetrical rms line current when fault is solidly grounded, I_a = %.f A", abs(I_a_b))
printf("\n         Initial symmetrical rms line current when fault is solidly grounded, I_b = (%.f+%.fj) A", real(I_b_b),imag(I_b_b))
printf("\n         Initial symmetrical rms line current when fault is solidly grounded, I_c = (%.f+%.fj) A", real(I_c_b),imag(I_c_b))
printf("\n         Ground wire current = %.fj A", imag(I_0_b))
printf("\n         Line to neutral voltage, V_a = %.f V", V_a_b)
printf("\n         Line to neutral voltage, V_b = %.f V", V_b_b)
printf("\n         Line to neutral voltage, V_c = %.f V\n", V_c_b)
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more precision here and approximation in textbook")
