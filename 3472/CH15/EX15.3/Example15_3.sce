// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 8: CORONA

// EXAMPLE : 8.3 :
// Page number 228
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 132.0            // Operating line voltage(kV)
f = 50.0             // Frequency(Hz)
d = 1.17             // Diameter of conductor(cm)
D = 300.0            // Distance b/w conductor(cm)
m = 0.96             // Irregularity factor
b = 72.0             // Barometric pressure(cm)
t = 20.0             // Temperature(°C)

// Calculations
delta = 3.92*b/(273.0+t)                                         // Air density factor
r = d/2.0                                                        // Radius of conductor(cm)
E_0 = 21.1*m*delta*r*log(D/r)                                    // Critical disruptive voltage for fair weather condition(kV/phase)
E_0_foul = 0.8*E_0                                               // Critical disruptive voltage for foul weather(kV/phase)
E = V/3**0.5                                                     // Phase voltage(kV)
P_fair = 244.0*10**-5*(f+25)/delta*(r/D)**0.5*(E-E_0)**2         // Corona loss for fair weather condition(kW/km/phase)
P_foul = 244.0*10**-5*(f+25)/delta*(r/D)**0.5*(E-E_0_foul)**2    // Corona loss for foul weather condition(kW/km/phase)
    
// Results
disp("PART II - EXAMPLE : 8.3 : SOLUTION :-")
printf("\nCorona loss in fair weather, P = %.3f kW/km/phase", P_fair)
printf("\nCorona loss in foul weather, P = %.3f kW/km/phase", P_foul)
