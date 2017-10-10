// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 3: STEADY STATE CHARACTERISTICS AND PERFORMANCE OF TRANSMISSION LINES

// EXAMPLE : 3.9 :
// Page number 134
clear ; clc ; close ; // Clear the work space and console

// Given data
f = 50.0                      // Frequency(Hz)
E_r = 66.0*10**3              // Line voltage at receiving end(V)
l = 120.0                     // Line length(km)
r = 0.1                       // Resistance(ohm/km/phase)
x = 0.3                       // Inductive reactance(ohm/km/phase)
y = 0.04*10**-4               // Capacitive susceptance(S/km/phase)
P_L = 10.0*10**6              // Load at receiving end(W)
PF_r = 0.8                    // Lagging load power factor

// Calculations
R = r*l                                                            // Total resistance(ohm/phase)
X = x*l                                                            // Inductive reactance(ohm/phase)
Y = y*l                                                            // Susceptance(mho)
Z = complex(R,X)                                                   // Total impedance(ohm/phase)
V_r = E_r/3**0.5                                                   // Receiving end phase voltage(V)
I_r = P_L/(3**0.5*E_r*PF_r)*exp(%i*-acos(PF_r))                    // Load current(A)
V_1 = V_r+I_r*(Z/2)                                                // Voltage across capacitor(V)
I_c = %i*Y*V_1                                                     // Charging current(A)
I_s = I_r+I_c                                                      // Sending end current(A)
V_s = V_1+I_s*(Z/2)                                                // Sending end voltage(V/phase)
V_s_ll = 3**0.5*abs(V_s)/1000.0                                    // Sending end line to line voltage(kV)
angle_Vr_Vs = phasemag(V_s)                                        // Angle between V_r and V_s(°)
angle_Vr_Is = phasemag(I_s)                                        // Angle between V_r and I_s(°)
angle_Vs_Is = angle_Vr_Vs-angle_Vr_Is                              // Angle between V_s and I_s(°)
PF_s = cosd(angle_Vs_Is)                                           // Sending end power factor
P_s = 3*abs(V_s*I_s)*PF_s                                          // Sending end power(W)
n = P_L/P_s*100                                                    // Transmission efficiency(%)

// Results
disp("PART II - EXAMPLE : 3.9 : SOLUTION :-")
printf("\nSending end voltage, |V_s| = %.f V/phase = %.3f V (line-to-line)", abs(V_s),V_s_ll)
printf("\nSending end current, |I_s| = %.2f A", abs(I_s))
printf("\nTransmission efficiency = %.2f percent \n", n)
printf("\nNOTE: ERROR: Calculation mistake in finding sending end power factor")
printf("\n      Changes in the obtained answer from that of textbook is due to more precision")
