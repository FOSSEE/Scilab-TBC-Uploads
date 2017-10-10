// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 11: LOAD FREQUENCY CONTROL AND LOAD SHARING OF POWER GENERATING SOURCES

// EXAMPLE : 11.11 :
// Page number 337
clear ; clc ; close ; // Clear the work space and console

// Given data
P = 9.0                   // Load supplied from substation(MW)
V = 33000.0               // Voltage(V)
PF_1 = 1.0                // Unity power factor
Z_A = complex(2.0,8.0)    // Impedance of circuit A(ohm)
Z_B = complex(4.0,4.0)    // Impedance of circuit B(ohm)

// Calculations
V_ph = V/3**0.5                                 // Voltage at receiving end per phase(V)
P_A = 1.0/3*P                                   // Power supplied by line A(MW)
P_B = 2.0/3*P                                   // Power supplied by line B(MW)
I_A = P_A*10**6/(3**0.5*V)                      // Current through line A(A)
I_B = P_B*10**6/(3**0.5*V)                      // Current through line B(A)
IA_ZA_drop = I_A*Z_A                            // I_A Z_A drop(V/phase)
IB_ZB_drop = I_B*Z_B                            // I_B Z_B drop(V/phase)
phase_boost = real(IB_ZB_drop)-real(IA_ZA_drop) // Voltage in phase boost(V/phase)
quad_boost = imag(IB_ZB_drop)-imag(IA_ZA_drop)  // Voltage in quadrature boost(V/phase)
constant_P = V_ph+IA_ZA_drop                    // Assumed that sending end voltage at P is kept constant(V/phase)

// Results
disp("PART II - EXAMPLE : 11.11 : SOLUTION :-")
printf("\nVoltage in-phase boost = %.2f V/phase", phase_boost)
printf("\nVoltage in quadrature boost = %.f V/phase", quad_boost)
