// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 13: WAVE PROPAGATION ON TRANSMISSION LINES

// EXAMPLE : 13.6 :
// Page number 367
clear ; clc ; close ; // Clear the work space and console

// Given data
Z = 100.0         // Surge impedance of cable(ohm)
Z_1 = 600.0       // Surge impedance of open wire(ohm)
Z_2 = 1000.0      // Surge impedance of open wire(ohm)
e = 2.0           // Steep fronted voltage(kV)

// Calculations
Z_t = Z_1*Z_2/(Z_1+Z_2)       // Resultant surge impedance(ohm)
E = e*(1+((Z_t-Z)/(Z_t+Z)))   // Transmitted voltage(kV)
I_1 = E*1000/Z_1              // Current(A)
I_2 = E*1000/Z_2              // Current(A)
E_ref = e*(Z_t-Z)/(Z_t+Z)     // Reflected voltage(kV)
I_ref = -E_ref*1000/Z         // Reflected current(A)

// Results
disp("PART II - EXAMPLE : 13.6 : SOLUTION :-")
printf("\nVoltage in the cable = %.3f kV", E)
printf("\nCurrent in the cable, I_1 = %.2f A", I_1)
printf("\nCurrent in the cable, I_2 = %.3f A", I_2)
printf("\nVoltage in the open-wire lines i.e Reflected voltage = %.3f kV", E_ref)
printf("\nCurrent in the open-wire lines i.e Reflected current = %.2f A", I_ref)
