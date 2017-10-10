// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 18: POWER DISTRIBUTION SYSTEMS

// EXAMPLE : 18.9 :
// Page number 444
clear ; clc ; close ; // Clear the work space and console

// Given data
V_a = 11.0*10**3             // Line voltage at A(V)
Z_AB = complex(1.0,0.8)      // Impedance between A & B(ohm)
Z_AC = complex(3.0,2.0)      // Impedance between A & C(ohm)
Z_BD = complex(3.0,4.0)      // Impedance between B & D(ohm)
Z_CD = complex(1.0,0.7)      // Impedance between C & D(ohm)
I_B = 60.0                   // Current at B(A)
I_C = 30.0                   // Current at C(A)
I_D = 50.0                   // Current at D(A)
pf_B = 0.8                   // Power factor at B
pf_C = 0.9                   // Power factor at C
pf_D = 0.707                 // Power factor at D

// Calculations
sin_phi_B = (1-pf_B**2)**0.5
I_B1 = I_B*(pf_B-%i*sin_phi_B)      // Load current(A)
sin_phi_C = (1-pf_C**2)**0.5
I_C1 = I_C*(pf_C-%i*sin_phi_C)      // Load current(A)
sin_phi_D = (1-pf_D**2)**0.5
I_D1 = I_D*(pf_D-%i*sin_phi_D)      // Load current(A)
V_A = V_a/3**0.5                    // Phase voltage at A(V)
I_AC = I_C1                         // Current in section AC when C & D is removed(A)
I_BD = I_D1                         // Current in section BD when C & D is removed(A)
I_AB = I_B1+I_D1                    // Current in section AB when C & D is removed(A)
V_AC_drop = I_AC*Z_AC               // Voltage drop at section AC(V)
V_AB_drop = I_AB*Z_AB               // Voltage drop at section AB(V)
V_BD_drop = I_BD*Z_BD               // Voltage drop at section BD(V)
V_drop_D = V_BD_drop+V_AB_drop      // Total drop upto D(V)
pd_CD = V_drop_D-V_AC_drop          // Potential difference between C & D(V)
Z_C_D = Z_AB+Z_BD+Z_AC              // Impedance of network looking from terminal C & D(ohm)
I_CD = pd_CD/(Z_C_D+Z_CD)           // Current flowing in section CD(A)
I_AC = I_CD+I_C1                    // Current flowing in section AC(A)
I_BD = I_D1-I_CD                    // Current flowing in section BD(A)
I_AB = I_BD+I_B1                    // Current flowing in section AB(A)
V_drop_AC = I_AC*Z_AC               // Drop caused by current flowing in section AC(V/phase)
V_drop_AC_line = V_drop_AC*3**0.5   // Drop caused by current flowing in section AC(V)
V_C = V_a-V_drop_AC_line            // Voltage at C(V)

// Results
disp("PART II - EXAMPLE : 18.9 : SOLUTION :-")
printf("\nCurrent in section CD, I_CD = (%.2f%.2fj) A", real(I_CD),imag(I_CD))
printf("\nCurrent in section AC, I_AC = (%.2f%.2fj) A", real(I_AC),imag(I_AC))
printf("\nCurrent in section BD, I_BD = (%.2f%.2fj) A", real(I_BD),imag(I_BD))
printf("\nCurrent in section AB, I_AB = (%.2f%.2fj) A", real(I_AB),imag(I_AB))
printf("\nVoltage at load point C = %.2f∠%.2f° kV", abs(V_C)/1000,phasemag(V_C))
