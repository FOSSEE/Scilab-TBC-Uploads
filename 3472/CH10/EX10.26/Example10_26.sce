// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 3: STEADY STATE CHARACTERISTICS AND PERFORMANCE OF TRANSMISSION LINES

// EXAMPLE : 3.26 :
// Page number 163-164
clear ; clc ; close ; // Clear the work space and console

// Given data
L = 100.0              // Length of line(km)
PF_r = 1.0             // Receiving end Power factor
Z_c = 400.0            // Characteristic impedance(ohm)
beta = 1.2*10**-3      // Propagation constant(rad/km)
V_s = 230.0            // Sending end voltage(kV)

// Calculations
beta_L = beta*L                // (rad)
beta_L_d = beta_L*180/%pi      // (°)
A = cosd(beta_L)               // Constant
B = %i*Z_c*sin(beta_L)         // Constant
alpha_angle = phasemag(A)      // α(°)
beta_angle = phasemag(B)       // β(°)
V_r = V_s                      // Receiving end voltage due to lossless line(kV)
P_max = (V_s*V_r/abs(B))-(abs(A)*V_r**2/abs(B))*cosd(beta_angle-alpha_angle)   // Maximum power transferred(MW)

// Results
disp("PART II - EXAMPLE : 3.26 : SOLUTION :-")
printf("\nMaximum power that can be transferred to the load at receiving end, P_max = %.f MW \n", P_max)
printf("\nNOTE: Changes in obtained answer from that of textbook is due to more precision")
