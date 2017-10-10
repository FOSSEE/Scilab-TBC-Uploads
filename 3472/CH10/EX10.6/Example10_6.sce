// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 3: STEADY STATE CHARACTERISTICS AND PERFORMANCE OF TRANSMISSION LINES

// EXAMPLE : 3.6 :
// Page number 130-131
clear ; clc ; close ; // Clear the work space and console

// Given data
f = 50.0                                             // Frequency(Hz)
l = 10.0                                             // Line length(km)
Z_l = 0.5*exp(%i*60.0*%pi/180)                       // Load impedance(ohm/km)
P = 316.8*10**3                                      // Load side power(W)
PF_r = 0.8                                           // Load side power factor
E_r = 3.3*10**3                                      // Load bus voltage(V)

// Calculations
Z_line = Z_l*l                                       // Load impedance(ohm)
I_r = P/(E_r*PF_r)*exp(%i*-acos(PF_r))               // Line current(A)
sin_phi_r = (1-PF_r**2)**0.5                         // Sinφ_R
E_s = E_r+I_r*Z_line                                 // Sending end voltage(V)
reg = (abs(E_s)-abs(E_r))/abs(E_r)*100               // Voltage regulation(%)
R = real(Z_line)                                     // Resistance of the load line(ohm)
loss = abs(I_r)**2*R                                 // Loss in the transmission line(W)
loss_kW = loss/1000.0                                // Loss in the transmission line(kW)
P_s = P+loss                                         // Sending end power(W)
angle_Er_Es = phasemag(E_s)                          // Angle between V_r and V_s(°)
angle_Er_Ir = acosd(PF_r)                            // Angle between V_r and I_r(°)
angle_Es_Is = angle_Er_Es+angle_Er_Ir                // Angle between V_s and I_s(°)
PF_s = cosd(angle_Es_Is)                             // Sending end power factor

// Results
disp("PART II - EXAMPLE : 3.6 : SOLUTION :-")
printf("\nVoltage regulation = %.2f percent", reg)
printf("\nSending end voltage, E_s = %.f∠%.1f° V", abs(E_s),phasemag(E_s))
printf("\nLine loss = %.f kW", loss_kW)
printf("\nSending end power factor = %.2f ", PF_s)
