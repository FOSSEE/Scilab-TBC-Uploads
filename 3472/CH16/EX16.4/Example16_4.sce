// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 9: LOAD FLOW STUDY USING COMPUTER TECHNIQUES

// EXAMPLE : 9.4 :
// Page number 237-238
clear ; clc ; close ; // Clear the work space and console

// Given data
V_a = 1.0                                   // Voltage(p.u)
V_b = 1.0*exp(%i*-36.87*%pi/180)            // Voltage(p.u)
V_c = 1.0                                   // Voltage(p.u)
Z_1 = complex(0,1)                          // Reactance(p.u)
Z_2 = complex(0,1)                          // Reactance(p.u)
Z_3 = complex(0,1)                          // Reactance(p.u)
Z_13 = complex(0,0.4)                       // Reactance(p.u)
Z_23 = complex(0,0.4)                       // Reactance(p.u)
Z_14 = complex(0,0.2)                       // Reactance(p.u)
Z_24 = complex(0,0.2)                       // Reactance(p.u)
Z_34 = complex(0,0.2)                       // Reactance(p.u)
Z_12 = complex(0,0)                         // Reactance(p.u)

// Calculations
I_1 = V_a/Z_1         // Current injection vector(p.u)
I_2 = V_b/Z_2         // Current injection vector(p.u)
I_3 = V_c/Z_3         // Current injection vector(p.u)
I_4 = 0.0             // Current injection vector(p.u)
y1 = 1.0/Z_1          // Admittance(p.u)
y2 = 1.0/Z_2          // Admittance(p.u)
y3 = 1.0/Z_3          // Admittance(p.u)
y13 = 1.0/Z_13        // Admittance(p.u)
y23 = 1.0/Z_23        // Admittance(p.u)
y14 = 1.0/Z_14        // Admittance(p.u)
y24 = 1.0/Z_24        // Admittance(p.u)
y34 = 1.0/Z_34        // Admittance(p.u)
y12 = 0.0             // Admittance(p.u)
Y_11 = y1+y13+y14     // Equivalent admittance(p.u)
Y_12 = y12            // Equivalent admittance(p.u)
Y_13 = -y13           // Equivalent admittance(p.u)
Y_14 = -y14           // Equivalent admittance(p.u)
Y_21 = Y_12           // Equivalent admittance(p.u)
Y_22 = y2+y23+y24     // Equivalent admittance(p.u)
Y_23 = -y23           // Equivalent admittance(p.u)
Y_24 = -y24           // Equivalent admittance(p.u)
Y_31 = Y_13           // Equivalent admittance(p.u)
Y_32 = Y_23           // Equivalent admittance(p.u)
Y_33 = y3+y13+y23+y34 // Equivalent admittance(p.u)
Y_34 = -y34           // Equivalent admittance(p.u)
Y_41 = Y_14           // Equivalent admittance(p.u)
Y_42 = Y_24           // Equivalent admittance(p.u)
Y_43 = Y_34           // Equivalent admittance(p.u)
Y_44 = y14+y24+y34    // Equivalent admittance(p.u)
Y_bus = [[Y_11, Y_12, Y_13, Y_14],
         [Y_21, Y_22, Y_23, Y_24],
         [Y_31, Y_32, Y_33, Y_34],
         [Y_41, Y_42, Y_43, Y_44]]                // Bus admittance matrix
K = Y_bus([1,2],1:2)
L = Y_bus([1,2],3:4)
M = Y_bus([3,4],3:4)
N = Y_bus([3,4],1:2)
inv_M = inv([M(1,1:2);M(2,1:2)])                 // Multiplication of marix [L][M^-1][N]
Y_bus_new = K-L*inv_M*N                          // New bus admittance matrix

// Results
disp("PART II - EXAMPLE : 9.4 : SOLUTION :-")
printf("\n[Y_bus]_new = \n"); disp(Y_bus_new)
printf("\nNOTE: ERROR: Mistake in representing the sign in final answer in textbook")
