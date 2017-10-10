// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 7: UNDERGROUND CABLES

// EXAMPLE : 7.16 :
// Page number 222-223
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 33.0*10**3    // Line Voltage(V)
f = 50.0          // Frequency(Hz)
l = 4.0           // Length(km)
d = 2.5           // Diameter of conductor(cm)
t = 0.5           // Radial thickness of insulation(cm)
e_r = 3.0         // Relative permittivity of the dielectric
PF = 0.02         // Power factor of unloaded cable

// Calculations
// Case(a)
r = d/2.0                                         // Radius of conductor(cm)
R = r+t                                           // External radius(cm)
e_0 = 8.85*10**-12                                // Permittivity
C = 2.0*%pi*e_0*e_r/log(R/r)*l*1000               // Capacitance of cable/phase(F)
// Case(b)
V_ph = V/3**0.5                                   // Phase voltage(V)
I_c = V_ph*2.0*%pi*f*C                            // Charging current/phase(A)
// Case(c)
kVAR = 3.0*V_ph*I_c                               // Total charging kVAR
// Case(d)
phi = acosd(PF)                                   // Φ(°)
delta = 90.0-phi                                  // δ(°)
P_c = V_ph*I_c*sind(delta)/1000                   // Dielectric loss/phase(kW)
// Case(e)
E_max = V_ph/(r*log(R/r)*1000)                    // RMS value of Maximum stress in cable(kV/cm)

// Results
disp("PART II - EXAMPLE : 7.16 : SOLUTION :-")
printf("\nCase(a): Capacitance of the cable, C = %.3e F/phase", C)
printf("\nCase(b): Charging current = %.2f A/phase", I_c)
printf("\nCase(c): Total charging kVAR = %.4e kVAR", kVAR)
printf("\nCase(d): Dielectric loss/phase, P_c = %.2f kW", P_c)
printf("\nCase(e): Maximum stress in the cable, E_max = %.1f kV/cm (rms)", E_max)
