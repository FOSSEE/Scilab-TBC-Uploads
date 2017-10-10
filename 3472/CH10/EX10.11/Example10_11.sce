// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 3: STEADY STATE CHARACTERISTICS AND PERFORMANCE OF TRANSMISSION LINES

// EXAMPLE : 3.11 :
// Page number 135-137
clear ; clc ; close ; // Clear the work space and console

// Given data
f = 50.0                      // Frequency(Hz)
R = 28.0                      // Resistance(ohm/phasemag)
X = 63.0                      // Inductive reactance(ohm/phasemag)
Y = 4.0*10**-4                // Capacitive susceptance(mho)
P_r = 75.0*10**6              // Load at receiving end(VA)
PF_r = 0.8                    // Lagging load power factor
V_r = 132.0*10**3             // Line voltage at receiving end(V)

// Calculations
// Case(i) Nominal T method
Z = complex(R,X)                                                   // Total impedance(ohm/phasemag)
E_r = V_r/3**0.5                                                   // Receiving end phasemag voltage(V)
I_r = P_r/(3**0.5*V_r)*exp(%i*-acos(PF_r))                         // Line current at receiving end(A)
E = E_r+I_r*(Z/2)
I_c = %i*Y*E                                                       // Capacitive current(A)
I_s = I_r+I_c                                                      // Sending end current(A)
v_drop = I_s*(Z/2)                                                 // Voltage drop(V)
E_s = E+I_s*(Z/2)                                                  // Sending end voltage(V)
E_s_kV = E_s/1000.0                                                // Sending end voltage(kV)
E_s_ll= 3**0.5*abs(E_s)                                            // Sending end line voltage(V)
E_s_llkV = E_s_ll/1000.0                                           // Sending end line voltage(kV)
angle_Er_Es = phasemag(E_s)                                        // Angle between E_r and E_s(°)
angle_Er_Is = phasemag(I_s)                                        // Angle between E_r and I_s(°)
angle_Es_Is = angle_Er_Es-angle_Er_Is                              // Angle between E_s and I_s(°)
PF_s = cosd(angle_Es_Is)                                           // Sending end power factor
P_s = 3**0.5*E_s_ll*abs(I_s)*PF_s                                  // Power at sending end(W)
reg = (abs(E_s_ll)-V_r)/V_r*100                                    // Regulation(%)
n = (P_r*PF_r)/P_s*100                                             // Transmission efficiency(%)
// Case(ii) Nominal π method
I_c2 = E_r*(%i*Y/2)                                                // Current through shunt admittance at receiving end(A)
I = I_r+I_c2                                                       // Line current(A)
E_s_p = E_r+I*Z                                                    // Sending end voltage(V)
E_s_pkV = E_s_p/1000.0                                             // Sending end voltage(kV)
E_s_pll = 3**0.5*abs(E_s_p)                                        // Sending end line voltage(V)
E_s_pllkV = E_s_pll/1000.0                                         // Sending end line voltage(kV)
I_c1 = E_s_p*(%i*Y/2)                                              // Current through shunt admittance at sending end(A)
I_s_p = I+I_c1                                                     // Sending end current(A)
angle_Er_Esp = phasemag(E_s)                                       // Angle between E_r and E_s(°)
angle_Er_Isp = phasemag(I_s)                                       // Angle between E_r and I_s(°)
angle_Es_Isp = angle_Er_Esp-angle_Er_Isp                           // Angle between E_s and I_s(°)
PF_s_p = cosd(angle_Es_Isp)                                        // Sending end power factor
P_s_p = 3**0.5*E_s_pll*abs(I_s_p)*PF_s_p                           // Power at sending end(W)
reg_p = (abs(E_s_pll)-V_r)/V_r*100                                 // Regulation(%)
n_p = (P_r*PF_r)/P_s_p*100                                         // Transmission efficiency(%)

// Results
disp("PART II - EXAMPLE : 3.11 : SOLUTION :-")
printf("\n(i) Nominal T method")
printf("\nCase(a): Voltage at sending end, E_s = %.2f∠%.2f° kV = %.1f kV (line-to-line)", abs(E_s_kV),phasemag(E_s_kV),E_s_llkV)
printf("\nCase(b): Sending end current, I_s = %.1f∠%.2f° A", abs(I_s),phasemag(I_s))
printf("\nCase(c): Power factor at sending end = %.4f (lagging)", PF_s)
printf("\nCase(d): Regulation = %.2f percent", reg)
printf("\nCase(e): Efficiency of transmission = %.2f percent \n", n)
printf("\n(ii) Nominal π method")
printf("\nCase(a): Voltage at sending end, E_s = %.2f∠%.2f° kV = %.1f kV (line-to-line)", abs(E_s_pkV),phasemag(E_s_pkV),E_s_pllkV)
printf("\nCase(b): Sending end current, I_s = %.1f∠%.2f° A", abs(I_s_p),phasemag(I_s_p))
printf("\nCase(c): Power factor at sending end = %.4f (lagging)", PF_s_p)
printf("\nCase(d): Regulation = %.2f percent", reg_p)
printf("\nCase(e): Efficiency of transmission = %.2f percent \n", n_p)
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more precision here and more approximation in textbook")
