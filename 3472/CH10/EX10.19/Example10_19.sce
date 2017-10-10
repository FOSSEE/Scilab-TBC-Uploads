// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 3: STEADY STATE CHARACTERISTICS AND PERFORMANCE OF TRANSMISSION LINES

// EXAMPLE : 3.19 :
// Page number 148-149
clear ; clc ; close ; // Clear the work space and console

// Given data
V_r = 220.0*10**3                    // Line voltage at receiving end(V)
Z = complex(40,200)                  // Impedance per phasemag(ohm)
Y = %i*0.0015                        // Admittance(S)
I_R = 200.0                          // Receiving end current(A)
PF_r = 0.95                          // Lagging power factor

// Calculations
// Case(i) Nominal π method
// Case(a)
E_r = V_r/3**0.5                             // Receiving end phasemag voltage(V)
I_r = I_R*exp(%i*-acos(PF_r))     // Line current(A)
Y_2 = Y/2.0                                  // Admittance(S)
I_c2 = Y_2*E_r                               // Current through shunt admittance at receiving end(A)
I = I_r+I_c2                                 // Current through impedance(A)
IZ_drop = I*Z                                // Voltage drop(V)
E_s = E_r+IZ_drop                            // Sending end voltage(V)
E_s_kV = E_s/1000.0                          // Sending end voltage(kV)
// Case(b)
I_c1 = E_s*Y_2                               // Current through shunt admittance at sending end(A)
I_s = I+I_c1                                 // Sending end current(A)
// Case(ii) Nominal T method
// Case(a)
I_r_Z2 = I_r*Z/2                             // Voltage drop at receiving end(V)
E = E_r+I_r_Z2                               // Voltage(V)
I_c = Y*E                                    // Current through shunt admittance(A)
I_s_2 = I_c+I_r                              // Sending end current(A)
I_s_Z2 = I_s_2*(Z/2)                         // Voltage drop at sending end(V)
E_s_2 = I_s_Z2+E                             // Sending end voltage(V)
E_s_2kV = E_s_2/1000.0                       // Sending end voltage(kV)

// Results
disp("PART II - EXAMPLE : 3.19 : SOLUTION :-")
printf("\nCase(i): Nominal π method")
printf("\n         Case(a): Sending end voltage, E_s = %.1f∠%.2f° kV", abs(E_s_kV),phasemag(E_s_kV))
printf("\n         Case(b): Sending end current, I_s = %.1f∠%.2f° A", abs(I_s),phasemag(I_s))
printf("\nCase(ii): Nominal T method")
printf("\n         Case(a): Sending end voltage, E_s = %.1f∠%.2f° kV", abs(E_s_2kV),phasemag(E_s_2kV))
printf("\n         Case(b): Sending end current, I_s = %.1f∠%.2f° A \n", abs(I_s_2),phasemag(I_s_2))
printf("\nThe results are tabulated below")
printf("\n________________________________________________________")
printf("\nMETHOD            E_s(kV)                I_s(A)")
printf("\n________________________________________________________")
printf("\nRigorous        √3*132.6∠16.46°        209.8∠39.42°")
printf("\nNominal π       √3*%.1f∠%.2f°        %.1f∠%.2f°", abs(E_s_kV),phasemag(E_s_kV),abs(I_s),phasemag(I_s))
printf("\nNominal T       √3*%.1f∠%.2f°        %.1f∠%.2f°", abs(E_s_2kV),phasemag(E_s_2kV),abs(I_s_2),phasemag(I_s_2))
printf("\n________________________________________________________")
