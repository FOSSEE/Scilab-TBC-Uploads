// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 3: STEADY STATE CHARACTERISTICS AND PERFORMANCE OF TRANSMISSION LINES

// EXAMPLE : 3.21 :
// Page number 153
clear ; clc ; close ; // Clear the work space and console

// Given data
V_r = 132.0*10**3                              // Line voltage at receiving end(V)
P_L = 45.0*10**6                               // Load delivered(VA)
PF_r = 0.8                                     // Lagging power factor
A = 0.99*exp(%i*0.3*%pi/180)                   // Constant
B = 70.0*exp(%i*69.0*%pi/180)                  // Constant(ohms)
C = A                                          // Constant
D = 4.0*10**-4*exp(%i*90.0*%pi/180)            // Constant

// Calculations
E_r = V_r/3**0.5                                          // Receiving end phasemag voltage(V)
I_r = P_L/(3**0.5*V_r)*exp(%i*-acos(PF_r))                // Line current(A)
E_s = A*E_r+B*I_r                                         // Sending end voltage(V)
E_s_llkV = 3**0.5*E_s/1000.0                              // Sending end line voltage(kV)
I_s = C*I_r+D*E_r                                         // Sending end current(A)
angle_Er_Es = phasemag(E_s)                               // Angle between E_r and E_s(°)
angle_Er_Is = phasemag(I_s)                               // Angle between E_r and I_s(°)
angle_Es_Is = angle_Er_Es-angle_Er_Is                     // Angle between E_s and I_s(°)
PF_s = cosd(angle_Es_Is)                                  // Sending end power factor
P_s = 3*abs(E_s*I_s)*PF_s                                 // Sending end power(W)
P_skW = P_s/1000.0                                        // Sending end power(kW)
P_r = P_L*PF_r                                            // Receiving end power(W)
n = P_r/P_s*100                                           // Transmission efficiency(%)

// Results
disp("PART II - EXAMPLE : 3.21 : SOLUTION :-")
printf("\nCase(i)  : Sending end voltage, E_s = %.1f∠%.f° kV (line-to-line)", abs(E_s_llkV),phasemag(E_s_llkV))
printf("\nCase(ii) : Sending end current, I_s = %.1f∠%.1f° A", abs(I_s),phasemag(I_s))
printf("\nCase(iii): Sending end power, P_s = %.f kW", P_skW)
printf("\nCase(iv) : Efficiency of transmission = %.2f percent \n", n)
printf("\nNOTE: Changes in obtained answer from that textbook is due to more precision")
