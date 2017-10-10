// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 7: UNDERGROUND CABLES

// EXAMPLE : 7.2 :
// Page number 211
clear ; clc ; close ; // Clear the work space and console

// Given data
R = 495.0*10**6      // Insulation resistance(ohm/km)
d = 3.0              // Core diameter(cm)
rho = 4.5*10**14     // Resistivity of insulation(ohm-cm)

// Calculations
l = 1000.0                               // Length of cable(m)
r_2 = d/2.0                              // Core radius(cm)
Rho = rho/100.0                          // Resistivity of insulation(ohm-m)
r1_r2 = exp((2*%pi*l*R)/Rho)             // r1/r2
r_1 = 2*r_2                              // Cable radius(cm)
thick = r_1-r_2                          // Insulation thickness(cm)

// Results
disp("PART II - EXAMPLE : 7.2 : SOLUTION :-")
printf("\nInsulation thickness = %.1f cm", thick)
