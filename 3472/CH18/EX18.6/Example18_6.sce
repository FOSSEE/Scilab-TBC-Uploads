// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 11: LOAD FREQUENCY CONTROL AND LOAD SHARING OF POWER GENERATING SOURCES

// EXAMPLE : 11.6 :
// Page number 334
clear ; clc ; close ; // Clear the work space and console

// Given data
load_1 = 20000.0        // Total load(kW)
V = 11000.0             // Voltage(V)
PF_1 = 1.0              // Unity power factor
load_2 = 8000.0         // Load supplied(kW)
PF_2 = 0.8              // Lagging power factor
R = 0.5                 // Resistance(ohm/phase)
X = 0.8                 // Reactance(ohm/phase)

// Calculations
I_1 = load_1*1000/(3**0.5*V*PF_1)                                  // Load current(A)
I_2 = load_2*1000/(3**0.5*V*PF_2)*exp(%i*-acos(PF_2))              // Current supplied by local generators(A)
I_3 = I_1-I_2                                                      // Current through interconnector(A)
angle_I_3 = phasemag(I_3)                                          // Current through interconnector leads reference phasor by angle(°)
V_drop = (R+%i*X)*I_3                                              // Voltage drop across interconnector(V)
V_ph = V/3**0.5                                                    // Phase voltage(V)
V_S = V_ph+V_drop                                                  // Sending end voltage(V/phase)
V_S_ll = 3**0.5*V_S                                                // Sending end voltage(V)
angle_V_S_ll = phasemag(V_S_ll)                                    // Angle of sending end voltage(°)
PF_S = cosd(angle_I_3-angle_V_S_ll)                                // Power factor at sending station

// Results
disp("PART II - EXAMPLE : 11.6 : SOLUTION :-")
printf("\nVoltage at this latter station = %.f∠%.2f° V (line-to-line)", abs(V_S_ll),angle_V_S_ll)
printf("\nPower factor at this latter station = %.4f (leading)", PF_S)
