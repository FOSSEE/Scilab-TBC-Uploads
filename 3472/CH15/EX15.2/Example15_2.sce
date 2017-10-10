// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 8: CORONA

// EXAMPLE : 8.2 :
// Page number 227-228
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 220.0            // Operating line voltage(kV)
f = 50.0             // Frequency(Hz)
d = 1.5              // Diameter of conductor(cm)
D = 300.0            // Distance b/w conductor(cm)
delta = 1.05         // Air density factor
g_0 = 21.1           // Breakdown strength of air(kV/cm)
m = 1.0              // Irregularity factor

// Calculations
E = V/3**0.5                                           // Phase voltage(kV)
r = d/2.0                                              // Radius of conductor(cm)
E_0 = m*g_0*delta*r*log(D/r)                           // Disruptive critical voltage to neutral(kV/phase)
E_0_ll = 3**0.5*E_0                                    // Line-to-line Disruptive critical voltage(kV)
P = 244.0*10**-5*(f+25)/delta*(r/D)**0.5*(E-E_0)**2    // Corona loss(kW/km/phase)
P_total = P*3.0                                        // Corona loss(kW/km)

// Results
disp("PART II - EXAMPLE : 8.2 : SOLUTION :-")
printf("\nCritical disruptive voltage, E_0 = %.2f kV/phase = %.2f kV (line-to-line)", E_0,E_0_ll)
printf("\nCorona loss, P = %.2f kW/km \n", P_total)
printf("\nNOTE: ERROR: Calculation mistake in the final answer in textbook")
