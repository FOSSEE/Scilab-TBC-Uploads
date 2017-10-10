// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 9: LOAD FLOW STUDY USING COMPUTER TECHNIQUES

// EXAMPLE : 9.5 :
// Page number 238
clear ; clc ; close ; // Clear the work space and console

// Given data
I_1 = 2.0                                   // Voltage(p.u)
I_2 = 2.0*exp(%i*45.0*%pi/180)              // Voltage(p.u)
y1 = complex(0,-1.0)                        // Admittance(p.u)
y2 = complex(0,-2.0)                        // Admittance(p.u)
y12 = complex(0,-2.0)                       // Admittance(p.u)

// Calculations
E_1 = I_1*y1                           // Voltage element(p.u)
E_2 = I_2*y2                           // Voltage element(p.u)
Y_11 = y1+y12                          // Self Admittance(p.u)
Y_12 = -y12                            // Mutual Admittance(p.u)
Y_21 = Y_12                            // Mutual Admittance(p.u)
Y_22 = y2+y12                          // Self Admittance(p.u)
Y_bus = [[Y_11, Y_12],
         [Y_21, Y_22]]                 // Bus admittance matrix
I_bus = [I_1,
         I_2]
V = inv(Y_bus)*I_bus
V_1 = V(1,1:1)                           // Voltage(p.u)
V_2 = V(2,1:1)                           // Voltage(p.u)

// Results
disp("PART II - EXAMPLE : 9.5 : SOLUTION :-")
printf("\n[Y_bus] = \n"); disp(Y_bus)
printf("\nV_1 = %.3f∠%.1f° p.u", abs(V_1),phasemag(V_1))
printf("\nV_2 = %.3f∠%.1f° p.u\n", abs(V_2),phasemag(V_2))
printf("\nNOTE: ERROR: Calculation mistake in V_1 in textbook")
