// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 3: SYMMETRICAL COMPONENTS' ANALYSIS

// EXAMPLE : 3.10 :
// Page number 494
clear ; clc ; close ; // Clear the work space and console

// Given data
R = 20000.0                                    // Resistance of voltmeter(ohm)
E_R = 100.0                                    // Line-to-neutral voltage(A)
E_Y = 200.0*exp(%i*270.0*%pi/180)              // Line-to-neutral voltage(A)
E_B = 100.0*exp(%i*120.0*%pi/180)              // Line-to-neutral voltage(A)

// Calculations
a = exp(%i*120.0*%pi/180)              // Operator
V_R0 = 1.0/3*(E_R+E_Y+E_B)             // Zero sequence voltage(V)
V_R1 = 1.0/3*(E_R+a*E_Y+a**2*E_B)      // Positive sequence voltage(V)
V_R2 = 1.0/3*(E_R+a**2*E_Y+a*E_B)      // Negative sequence voltage(V)
I_R1 = V_R1/R                          // Positive sequence current(A)
I_R2 = V_R2/R                          // Negative sequence current(A)
V_Y1 = a**2*V_R1                       // Positive sequence voltage of line Y(V)
V_Y2 = a*V_R2                          // Negative sequence voltage of line Y(V)
V_Y = V_Y1+V_Y2                        // Voltmeter reading connected to the yellow line(V)
I_Y = abs(V_Y)/R*1000                  // Current through voltmeter(mA)

// Results
disp("PART III - EXAMPLE : 3.10 : SOLUTION :-")
printf("\nVoltmeter reading connected to the yellow line, |V_Y| = %.1f V", abs(V_Y))
printf("\nCurrent through voltmeter, I_Y = %.3f mA \n", I_Y)
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more precision here")
