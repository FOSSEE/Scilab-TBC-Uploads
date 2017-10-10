// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 7: UNDERGROUND CABLES

// EXAMPLE : 7.6 :
// Page number 212-213
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 11.0*10**3        // Line Voltage(V)
dia_out = 8.0         // Outside diameter(cm)

// Calculations
D = dia_out/2.0                      // Overall diameter(cm)
d = (D)/2.718                        // Conductor diameter(cm)
r = d/2                              // Conductor radius(cm)
g_m = 2*V/(d*log(D/d)*10)            // Maximum value of electric field strength(kV/m)

// Results
disp("PART II - EXAMPLE : 7.6 : SOLUTION :-")
printf("\nConductor radius, r = %.3f cm", r)
printf("\nElectric field strength that must be withstood, g_m = %.f kV/m", g_m)
