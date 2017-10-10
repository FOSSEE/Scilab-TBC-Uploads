// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 7: UNDERGROUND CABLES

// EXAMPLE : 7.3 :
// Page number 212
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 66.0*10**3        // Line Voltage(V)
l = 1.0               // Length of cable(km)
d = 15.0              // Core diameter(cm)
D = 60.0              // Sheath diameter(cm)
e_r = 3.6             // Relative permittivity
f = 50.0              // Frequency(Hz)

// Calculations
C = e_r/(18.0*log(D/d))*l           // Capacitance(µF)
I_ch = V/3**0.5*2*%pi*f*C*10**-6    // Charging current(A)

// Results
disp("PART II - EXAMPLE : 7.3 : SOLUTION :-")
printf("\nCapacitance of single-core cable, C = %.3f µF", C)
printf("\nCharging current of single-core cable = %.2f A", I_ch)
