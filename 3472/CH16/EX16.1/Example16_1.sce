// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 9: LOAD FLOW STUDY USING COMPUTER TECHNIQUES

// EXAMPLE : 9.1 :
// Page number 235-236
clear ; clc ; close ; // Clear the work space and console

// Given data
Z_L1 = complex(14.3,97)       // Series impedance of line L1(ohm)
Z_PL1 = complex(0,-3274)      // Shunt impedance of line L1(ohm)
Z_L2 = complex(7.13,48.6)     // Series impedance of line L2(ohm)
Z_PL2 = complex(0,-6547)      // Shunt impedance of line L2(ohm)
Z_L3 = complex(9.38,64)       // Series impedance of line L3(ohm)
Z_PL3 = complex(0,-4976)      // Shunt impedance of line L3(ohm)

// Calculations
Y_S12 = 1.0/Z_L1                  // Series admittance(mho)
Y_P12 = 1.0/Z_PL1                 // Shunt admittance(mho)
Y_S23 = 1.0/Z_L3                  // Series admittance(mho)
Y_P23 = 1.0/Z_PL3                 // Shunt admittance(mho)
Y_S13 = 1.0/Z_L2                  // Series admittance(mho)
Y_P13 = 1.0/Z_PL2                 // Shunt admittance(mho)
Y_11 = Y_P12+Y_P13+Y_S12+Y_S13    // Admittance(mho)
Y_12 = -Y_S12                     // Admittance(mho)
Y_13 = -Y_S13                     // Admittance(mho)
Y_21 = Y_12                       // Admittance(mho)
Y_22 = Y_P12+Y_P23+Y_S12+Y_S23    // Admittance(mho)
Y_23 = -Y_S23                     // Admittance(mho)
Y_31 = Y_13                       // Admittance(mho)
Y_32 = Y_23                       // Admittance(mho)
Y_33 = Y_P13+Y_P23+Y_S23+Y_S13    // Admittance(mho)
Y_bus = [[Y_11, Y_12, Y_13],
         [Y_21, Y_22, Y_23],
         [Y_31, Y_32, Y_33]]

// Results
disp("PART II - EXAMPLE : 9.1 : SOLUTION :-")
printf("\n[Y_bus] = \n"); disp(Y_bus)
