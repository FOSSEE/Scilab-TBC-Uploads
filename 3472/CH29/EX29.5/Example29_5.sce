// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 3: SYMMETRICAL COMPONENTS' ANALYSIS

// EXAMPLE : 3.5 :
// Page number 490-491
clear ; clc ; close ; // Clear the work space and console

// Given data
E_a = 100.0    // Line to line voltage(V)
E_b = 150.0    // Line to line voltage(V)
E_c = 200.0    // Line to line voltage(V)

// Calculations
e_A = 1.0                                         // 100 V = 1 unit
e_B = 1.5                                         // 150 V = 1 unit
e_C = 2.0                                         // 200 V = 1 unit
cos_alpha = (e_C**2-e_A-e_B**2)/(2*e_B)
alpha = acosd(cos_alpha)                          // angle(°)
cos_beta = (e_A+e_B*cos_alpha)/e_C
beta = acosd(cos_beta)                            // angle(°)
E_A = E_a*exp(%i*180.0*%pi/180)                   // Voltage(V)
E_B = E_b*exp(%i*(180.0-alpha)*%pi/180)           // Voltage(V)
E_C = E_c*exp(%i*-beta*%pi/180)                   // Voltage(V)
a = exp(%i*120.0*%pi/180)                         // Operator
E_A0 = 1.0/3*(E_A+E_B+E_C)                        // Zero sequence voltage(V)
E_A1 = 1.0/3*(E_A+a*E_B+a**2*E_C)                 // Positive sequence delta voltage(V)
E_A1_mag = abs(E_A1)                              // Magnitude of positive sequence delta voltage(V)
E_a1 = -%i/3**0.5*E_A1                            // Positive sequence star voltage(V)
E_a1_mag = abs(E_a1)                              // Magnitude of positive sequence star voltage(V)
E_A2 = 1.0/3*(E_A+a**2*E_B+a*E_C)                 // Negative sequence delta voltage(V)
E_A2_mag = abs(E_A2)                              // Magnitude of negative sequence delta voltage(V)
E_a2 = %i/3**0.5*E_A2                             // Negative sequence star voltage(V)
E_a2_mag = abs(E_a2)                              // Magnitude of negative sequence star voltage(V)

// Results
disp("PART III - EXAMPLE : 3.5 : SOLUTION :-")
printf("\nMagnitude of positive sequence delta voltage, |E_A1| = %.f V", E_A1_mag)
printf("\nMagnitude of positive sequence star voltage, |E_a1| = %.1f V", E_a1_mag)
printf("\nMagnitude of negative sequence delta voltage, |E_A2| = %.f V", E_A2_mag)
printf("\nMagnitude of negative sequence star voltage, |E_a2| = %.f V", E_a2_mag)
