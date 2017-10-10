// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 18: POWER DISTRIBUTION SYSTEMS

// EXAMPLE : 18.3 :
// Page number 438-439
clear ; clc ; close ; // Clear the work space and console

// Given data
l = 400.0          // Length of cable(m)
i = 1.0            // Load(A/m)
I_1 = 120.0        // Current at 40m from end A(A)
l_1 = 40.0         // Distance from end A(A)
I_2 = 72.0         // Current at 72m from end A(A)
l_2 = 120.0        // Distance from end A(A)
I_3 = 48.0         // Current at 200m from end A(A)
l_3 = 200.0        // Distance from end A(A)
I_4 = 120.0        // Current at 320m from end A(A)
l_4 = 320.0        // Distance from end A(A)
r = 0.15           // Cable resistance(ohm/km)
V_A = 250.0        // Voltage at end A(A)
V_B = 250.0        // Voltage at end A(A)

// Calculations
I = poly(0,"I")                                                      // Current from end A(A)
A_A1 = l_1*r*(I-(1.0/2)*i*l_1)                                       // Drop over length(V)
I_d_1 = 40.0                                                         // Distributed tapped off current(A)
I_A1_A2 = I-l_1-l_2                                                  // Current fed in over length(A)
A1_A2 = (l_2-l_1)*r*(I_A1_A2-(1.0/2)*i*(l_2-l_1))                    // Drop over length(V)
I_d_2 = 80.0                                                         // Distributed tapped off current(A)
I_A2_A3 = I_A1_A2-(I_2+I_d_2)                                        // Current fed in over length(A)
A2_A3 = (l_3-l_2)*r*(I_A2_A3-(1.0/2)*i*(l_3-l_2))                    // Drop over length(V)
I_d_3 = 80.0                                                         // Distributed tapped off current(A)
I_A3_A4 = I_A2_A3-(I_3+I_d_3)                                        // Current fed in over length(A)
A3_A4 = (l_4-l_3)*r*(I_A3_A4-(1.0/2)*i*(l_4-l_3))                    // Drop over length(V)
I_d_4 = 120.0                                                        // Distributed tapped off current(A)
I_A4_B = I_A3_A4-(I_4+I_d_4)                                         // Current fed in over length(A)
A4_B = (l-l_4)*r*(I_A4_B-(1.0/2)*i*(l-l_4))                          // Drop over length(V)
V_drop = A_A1+A1_A2+A2_A3+A3_A4+A4_B                                 // Total voltage drop in terms of I
I = roots(V_drop)                                                    // Current(A)
I_total = 760.0                                                      // Total load current(A)
I_B = I_total-I                                                      // Current from B(A)
A_A3 = 2.0*r/1000*(l_1*(I-20)+(l_2-l_1)*(I-200)+(l_3-l_2)*(I-352))   // Potential drop over length A_A3(V)
V_A3 = V_A-A_A3                                                      // Voltage at the lowest run lamp(V)

// Results
disp("PART II - EXAMPLE : 18.3 : SOLUTION :-")
printf("\nPosition of lowest-run lamp, A_3 = %.f m", l_3)
printf("\nVoltage at the lowest-run lamp = %.1f V", V_A3)
