// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 3: STEADY STATE CHARACTERISTICS AND PERFORMANCE OF TRANSMISSION LINES

// EXAMPLE : 3.10 :
// Page number 135
clear ; clc ; close ; // Clear the work space and console

// Given data
f = 50.0                      // Frequency(Hz)
l = 125.0                     // Line length(km)
P_r = 40.0*10**6              // Load at receiving end(VA)
V_r = 110.0*10**3             // Line voltage at receiving end(V)
PF_r = 0.8                    // Lagging load power factor
R = 11.0                      // Resistance(ohm/phase)
X = 38.0                      // Inductive reactance(ohm/phase)
Y = 3.0*10**-4                // Capacitive susceptance(S)

// Calculations
// Case(i)
E_r = V_r/3**0.5                                        // Receiving end phase voltage(V)
Z = complex(R,X)                                        // Total impedance(ohm/phase)
I_c1 = E_r*(Y/2)*exp(%i*90.0*%pi/180)                   // Current through shunt admittance at receiving end(A)
I_r = P_r/(3**0.5*V_r)*exp(%i*-acos(PF_r))              // Load current(A)
I = I_r+I_c1                                            // Current through series impedance(A)
E_s = I*Z+E_r                                           // Voltage across shunt admittance at sending end(V)
E_s_ll = 3**0.5*E_s/1000.0                              // Line to line voltage at sending end(kV)
I_c2 = E_s*(Y/2)*exp(%i*90.0*%pi/180)                   // Current through shunt admittance at sending end(A)
// Case(ii)
I_s = I_c2+I_r                                          // Sending end current(A)
angle_Er_Es = phasemag(E_s)                             // Angle between E_r and E_s(°)
angle_Er_Is = phasemag(I_s)                             // Angle between E_r and I_s(°)
angle_Es_Is = angle_Er_Es-angle_Er_Is                   // Angle between E_s and I_s(°)
PF_s = cosd(angle_Es_Is)                                // Sending end power factor

// Results
disp("PART II - EXAMPLE : 3.10 : SOLUTION :-")
printf("\nCase(i) : Line to line voltage at sending end, E_s = %.f kV", abs(E_s_ll))
printf("\nCase(ii): Sending end power factor = %.3f \n", PF_s)
printf("\nNOTE: Answers in the textbook are incomplete")
