// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 3: STEADY STATE CHARACTERISTICS AND PERFORMANCE OF TRANSMISSION LINES

// EXAMPLE : 3.8 :
// Page number 133-134
clear ; clc ; close ; // Clear the work space and console

// Given data
f = 50.0                      // Frequency(Hz)
V_r = 132.0*10**3             // Line voltage at receiving end(V)
L = 100.0                     // Line length(km)
r = 0.17                      // Resistance(ohm/km/phase)
l = 1.1*10**-3                // Inductance(H/km/phase)
c = 0.0082*10**-6             // Capacitance(F/km/phase)
P_L = 70.0*10**6              // Load at receiving end(W)
PF_r = 0.8                    // Lagging load power factor

// Calculations
E_r = V_r/3**0.5                                       // Receiving end phase voltage(V)
I_r = P_L/(3**0.5*V_r*PF_r)*exp(%i*-acos(PF_r))        // Receiving end current(A)
R = r*L                                                // Total resistance(ohm/phase)
X = 2*%pi*f*l*L                                        // Inductive reactance(ohm/phase)
Z = complex(R,X)                                       // Total impedance(ohm/phase)
Y = 2*%pi*f*c*exp(%i*90.0*%pi/180)/L                   // Shunt admittance of line(mho/phase)
E = E_r+I_r*(Z/2)                                      // Voltage across shunt admittance(V/phase)
I_s = I_r+E*Y                                          // Sending end current(A)
E_s = E+I_s*(Z/2)                                      // Sending end voltage(V/phase)
E_s_ll = 3**0.5*abs(E_s)/1000                          // Sending end line to line voltage(kV)
angle_Er_Es = phasemag(E_s)                            // Angle between E_r and V_s(°)
angle_Er_Is = phasemag(I_s)                            // Angle between E_r and I_s(°)
angle_Es_Is = angle_Er_Es-angle_Er_Is                  // Angle between E_s and I_s(°)
PF_s = cosd(angle_Es_Is)                               // Sending end power factor

// Results
disp("PART II - EXAMPLE : 3.8 : SOLUTION :-")
printf("\nVoltage at sending end, E_s = %.2f∠%.2f° V/phase = %.f kV (line-to-line)", abs(E_s),phasemag(E_s),E_s_ll)
printf("\nCurrent at sending end, I_s = %.1f∠%.1f° A", abs(I_s),phasemag(I_s))
printf("\nSending end power factor = %.3f (lagging)", PF_s)
