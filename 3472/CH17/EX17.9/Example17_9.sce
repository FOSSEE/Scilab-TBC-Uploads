// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 10: POWER SYSTEM STABILITY

// EXAMPLE : 10.9 :
// Page number 275
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 132.0*10**3              // Sending end voltage(V)
Z_line = complex(4,6)        // Line impedance per phase(ohm)

// Calculations
V_S = V/3**0.5                                         // Sending end phase voltage(V)
V_R = V/3**0.5                                         // Receiving end phase voltage(V)
Z = abs(Z_line)                                        // Impedance(ohm)
R = real(Z_line)                                       // Resistance per phase(ohm)
P_max_phase = ((V_S*V_R/Z)-(R*V_R**2/Z**2))/10**6      // Maximum steady state power that can be transmitted over the line(MW/phase)
P_max_total = 3.0*P_max_phase                          // Maximum steady state power that can be transmitted over the line(MW)

// Results
disp("PART II - EXAMPLE : 10.9 : SOLUTION :-")
printf("\nMaximum steady state power that can be transmitted over the line, P_max = %.f MW (total 3-phase)", P_max_total)
