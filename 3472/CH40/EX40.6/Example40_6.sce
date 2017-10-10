// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 2: HEATING AND WELDING

// EXAMPLE : 2.6 :
// Page number 732
clear ; clc ; close ; // Clear the work space and console

// Given data
l = 10.0         // Length of material(cm)
b = 10.0         // Breadth of material(cm)
t = 3.0          // Thickness of material(cm)
f = 20.0*10**6   // Frequency(Hz)
P = 400.0        // Power absorbed(W)
e_r = 5.0        // Relative permittivity
PF = 0.05        // Power factor

// Calculations
e_0 = 8.854*10**-12          // Absolute permittivity
A = l*b*10**-4               // Area(Sq.m)
C = e_0*e_r*A/(t/100)        // Capacitace of parallel plate condenser(F)
X_c = 1.0/(2*%pi*f*C)        // Reactance of condenser(ohm)
phi = acosd(PF)              // Φ(°)
R = X_c*tand(phi)            // Resistance of condenser(ohm)
V = (P*R)**0.5               // Voltage necessary for heating(V)
I_c = V/X_c                  // Current flowing in the material(A)

// Results
disp("PART IV - EXAMPLE : 2.6 : SOLUTION :-")
printf("\nVoltage necessary for heating, V = %.f V", V)
printf("\nCurrent flowing in the material, I_c = %.2f A\n", I_c)
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more precision here & approximation in textbook")
