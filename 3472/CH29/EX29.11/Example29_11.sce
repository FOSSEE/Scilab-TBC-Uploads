// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 3: SYMMETRICAL COMPONENTS' ANALYSIS

// EXAMPLE : 3.11 :
// Page number 495
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 400.0               // Voltage(V)
Z_ab = 20.0             // Resistor load(ohm)
Z_bc = -%i*40.0         // Capacitor load(ohm)
Z_ca = 5.0+%i*10.0      // Inductor and resistance load(ohm)

// Calculations
V_ab = V                                          // Line voltage(V)
V_bc = V*exp(%i*-120.0*%pi/180)                   // Line voltage(V)
V_ca = V*exp(%i*120.0*%pi/180)                    // Line voltage(V)
I_ab = V_ab/Z_ab                                  // Current(A)
I_bc = V_bc/Z_bc                                  // Current(A)
I_ca = V_ca/Z_ca                                  // Current(A)
I_a = I_ab-I_ca                                   // Line current(A)
I_b = I_bc-I_ab                                   // Line current(A)
I_c = I_ca-I_bc                                   // Line current(A)
phi = -120.0-phasemag(I_a)                        // φ(°)
P = abs(I_a*V_bc)*cosd(phi)/1000                  // Wattmeter reading(kW)

// Results
disp("PART III - EXAMPLE : 3.11 : SOLUTION :-")
printf("\nLine currents are:")
printf("\n I_a = %.1f∠%.1f° A", abs(I_a),phasemag(I_a))
printf("\n I_b = %.1f∠%.2f° A", abs(I_b),phasemag(I_b))
printf("\n I_c = %.2f∠%.f° A", abs(I_c),phasemag(I_c))
printf("\nWattmeter reading, P = %.2f kW \n", P)
printf("\nNOTE: ERROR: Calculation mistakes in the textbook solution")
