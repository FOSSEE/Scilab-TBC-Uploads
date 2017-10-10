// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 2: HEATING AND WELDING

// EXAMPLE : 2.7 :
// Page number 732-733
clear ; clc ; close ; // Clear the work space and console

// Given data
l = 4.0          // Length of material(cm)
b = 2.0          // Breadth of material(cm)
t = 1.0          // Thickness of material(cm)
l_e = 20.0       // Length of area(cm)
b_e = 2.0        // Breadth of area(cm)
dis = 1.6        // Distance of separation of electrode(cm)
f = 20.0*10**6   // Frequency(Hz)
P = 80.0         // Power absorbed(W)
e_r1 = 5.0       // Relative permittivity
e_r2 = 1.0       // Relative permittivity of air
PF = 0.05        // Power factor

// Calculations
e_0 = 8.854*10**-12                                    // Absolute permittivity
A_1 = (l_e-l)*b_e*10**-4                               // Area of one electrode(sq.m)
A_2 = l*b*10**-4                                       // Area of material under electrode(sq.m)
d = dis*10**-2                                         // Distance of separation of electrode(m)
d_1 = t*10**-2                                         // (m)
d_2 = (d-d_1)                                          // (m)
C = e_0*((A_1*e_r2/d)+(A_2/((d_1/e_r1)+(d_2/e_r2))))   // Capacitance(F)
X_c = 1.0/(2*%pi*f*C)                                  // Reactance(ohm)
phi = acosd(PF)                                        // Φ(°)
R = X_c*tand(phi)                                      // Resistance(ohm)
V = (P*R)**0.5                                         // Voltage applied across electrodes(V)
I_c = V/X_c                                            // Current through the material(A)

// Results
disp("PART IV - EXAMPLE : 2.7 : SOLUTION :-")
printf("\nVoltage applied across electrodes, V = %.f V", V)
printf("\nCurrent through the material, I_c = %.1f A\n", I_c)
printf("\nNOTE: ERROR: Calculation mistake in the textbook solution")
