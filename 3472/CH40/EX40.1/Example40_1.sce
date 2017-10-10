// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 2: HEATING AND WELDING

// EXAMPLE : 2.1 :
// Page number 724-725
clear ; clc ; close ; // Clear the work space and console

// Given data
P = 15.0*10**3     // Power supplied(W)
V = 220.0          // Voltage(V)
T_w = 1000.0       // Temperature of wire(°C)
T_c = 600.0        // Temperature of charges(°C)
k = 0.6            // Radiatting efficiency
e = 0.9            // Emissivity

// Calculations
rho = 1.016/10**6                                                  // Specific resistance(ohm-m)
d_square = 4*rho*P/(%pi*V**2)                                      // d^2 in terms of l
T_1 = T_w+273                                                      // Absolute temperature(°C)
T_2 = T_c+273                                                      // Absolute temperature(°C)
H = 5.72*10**4*k*e*((T_1/1000)**4-(T_2/1000)**4)                   // Heat produced(watts/sq.m)
dl = P/(%pi*H)
l = (dl**2/d_square)**(1.0/3)                                      // Length of wire(m)
d = dl/l                                                           // Diameter of wire(m)
T_2_cold = 20.0+273                                                // Absolute temperature at the 20°C normal temperature(°C)
T_1_cold = (H/(5.72*10**4*k*e)+(T_2_cold/1000)**4)**(1.0/4)*1000   // Absolute temperature when charge is cold(°C)
T_1_c = T_1_cold-273                                               // Temperature when charge is cold(°C)

// Results
disp("PART IV - EXAMPLE : 2.1 : SOLUTION :-")
printf("\nDiameter of the wire, d = %.3f cm", d*100)
printf("\nLength of the wire, l = %.2f m", l)
printf("\nTemperature of the wire when charge is cold, T_1 = %.f°C absolute = %.f°C \n", T_1_cold,T_1_c)
printf("\nNOTE: Slight changes in the obtained answer from that of textbook is due to more precision here")
