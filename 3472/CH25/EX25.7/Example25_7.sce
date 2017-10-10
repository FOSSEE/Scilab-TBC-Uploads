// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 18: POWER DISTRIBUTION SYSTEMS

// EXAMPLE : 18.7 :
// Page number 441-442
clear ; clc ; close ; // Clear the work space and console

// Given data
r_out = 0.05             // Resistance of each outer per 100 metre length(ohm)
r_neutral = 0.10         // Resistance of each neutral per 100 metre length(ohm)
V_A = 200.0              // Potential at point A(V)
V_B = 200.0              // Potential at point B(V)
l_AC = 100.0             // Length between A & C(m)
l_CD = 150.0             // Length between C & D(m)
l_DB = 200.0             // Length between D & B(m)
l_AF = 200.0             // Length between A & F(m)
l_FE = 100.0             // Length between F & E(m)
l_EB = 150.0             // Length between E & B(m)
I_C = 20.0               // Current at point C(A)
I_D = 30.0               // Current at point D(A)
I_F = 60.0               // Current at point F(A)
I_E = 40.0               // Current at point E(A)

// Calculations
x = poly(0,"x")                                                   // Current in positive outer alone(A)
equ_1 = r_out*(l_DB*(I_D-x))-r_out*(l_AC*(I_C+x)+l_CD*x)
x_sol = roots(equ_1)                                              // Current in positive outer alone(A)
y = poly(0,"y")                                                   // Current in negative outer alone(A)
equ_2 = r_out*((I_E-y)*l_FE+(I_E+I_F-y)*l_AF)-r_out*(l_EB*y)
y_sol = roots(equ_2)                                              // Current in negative outer alone(A)
I_pos_out = I_C+x_sol                                             // Current entering positive outer(A)
I_neg_out = I_E+I_F-y_sol                                         // Current returning via negative outer(A)
I_middle = I_neg_out-I_pos_out                                    // Current in the middle wire towards G(A)
r_CD = r_out*l_CD/100.0                                           // Resistance between C & D(ohm)
r_D = r_out*l_DB/100.0                                            // Resistance between D & B(ohm)
r_IH = r_neutral*l_FE*0.5/100.0                                   // Resistance between I & H(ohm)
r_IJ = r_neutral*l_FE*0.5/100.0                                   // Resistance between I & J(ohm)
r_GH = r_neutral*l_AF*0.5/100.0                                   // Resistance between G & H(ohm)
r_AF = r_out*l_AF/100.0                                           // Resistance between A & F(ohm)
I_CD = x_sol                                                      // Current flowing into D from C(A)
I_out_D = I_D-x_sol                                               // Current flowing into D from outer side(A)
I_GH = I_C+I_middle                                               // Current flowing into H from G(A)
I_IH = I_F-I_GH                                                   // Current flowing into H from I(A)
I_BJ = I_E-(I_D-I_IH)                                             // Current flowing into J from B(A)
I_FE = y_sol-I_E                                                  // Current flowing into E from F(A)
I_IJ = I_D-I_IH                                                   // Current flowing into J from I(A)
V_C = V_A-(I_pos_out*r_out-I_middle*r_neutral)                    // Potential at load point C(A)
V_D = V_C-(I_CD*r_CD+I_IH*r_IH-I_GH*r_GH)                         // Potential at load point D(A)
V_F = V_A-(I_middle*r_neutral+I_GH*r_neutral+I_neg_out*r_AF)      // Potential at load point F(A)
V_E = V_F-(-I_IH*r_IH+I_IJ*r_IJ-I_FE*r_out)                       // Potential at load point E(A)

// Results
disp("PART II - EXAMPLE : 18.7 : SOLUTION :-")
printf("\nPotential difference at load point C = %.3f V", V_C)
printf("\nPotential difference at load point D = %.3f V", V_D)
printf("\nPotential difference at load point E = %.3f V", V_E)
printf("\nPotential difference at load point F = %.3f V", V_F)
