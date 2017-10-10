// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 9: LOAD FLOW STUDY USING COMPUTER TECHNIQUES

// EXAMPLE : 9.3 :
// Page number 236-237
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
         [Y_41, Y_42, Y_43, Y_44]]          // Bus admittance matrix
I_bus = [I_1,
         I_2,
         I_3,
         I_4]
V = inv(Y_bus)*I_bus                        // Bus voltage(p.u)

// Results
disp("PART II - EXAMPLE : 9.3 : SOLUTION :-")
printf("\nVoltage at bus 1, V_1 = %.4f%.4fj p.u", real(V(1,1:1)),imag(V(1,1:1)))
printf("\nVoltage at bus 2, V_2 = %.4f%.4fj p.u", real(V(2,1:1)),imag(V(2,1:1)))
printf("\nVoltage at bus 3, V_3 = %.4f%.4fj p.u", real(V(3,1:1)),imag(V(3,1:1)))
printf("\nVoltage at bus 4, V_4 = %.4f%.4fj p.u\n", real(V(4,1:1)),imag(V(4,1:1)))
printf("\nNOTE: Node equation matrix could not be represented in a single equation. Hence, it is not displayed")
