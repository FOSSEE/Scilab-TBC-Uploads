// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 2: HEATING AND WELDING

// EXAMPLE : 2.2 :
// Page number 725
clear ; clc ; close ; // Clear the work space and console

// Given data
P = 15.0*10**3         // Power supplied(W)
V = 220.0              // Voltage(V)
T_w = 1000.0           // Temperature of wire(°C)
T_c = 600.0            // Temperature of charges(°C)
k = 0.6                // Radiatting efficiency
e = 0.9                // Emissivity
thick = 0.25/1000      // Thickness of nickel-chrome strip(m)

// Calculations
rho = 1.016/10**6                                     // Specific resistance(ohm-m)
R = V**2/P                                            // Resistance(ohm)
l_w = R*thick/rho                                     // Length of strip in terms of w
T_1 = T_w+273                                         // Absolute temperature(°C)
T_2 = T_c+273                                         // Absolute temperature(°C)
H = 5.72*10**4*k*e*((T_1/1000)**4-(T_2/1000)**4)      // Heat produced(watts/sq.m)
wl = P/(2*H)
w = (wl/l_w)**0.5                                     // Width of nickel-chrome strip(m)
l = w*l_w                                             // Length of nickel-chrome strip(m)

// Results
disp("PART IV - EXAMPLE : 2.2 : SOLUTION :-")
printf("\nWidth of nickel-chrome strip, w = %.3f cm", w*100)
printf("\nLength of nickel-chrome strip, l = %.1f m", l)
