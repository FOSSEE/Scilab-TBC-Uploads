// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 10: POWER SYSTEM STABILITY

// EXAMPLE : 10.24 :
// Page number 306-307
clear ; clc ; close ; // Clear the work space and console

// Given data
x_d = %i*0.2        // Transient reactance of generator(p.u)
P_e = 0.8           // Power delivered(p.u)
V_t = 1.05          // Terminal voltage(p.u)
H = 4.0             // Inertia constant(kW-sec/kVA)
x_t = %i*0.1        // Transformer reactance(p.u)
x_l = %i*0.4        // Transmission line reactance(p.u)
V = 1.0             // Infinite bus voltage(p.u)
f = 50.0            // Frequency(Hz)

// Calculations
x_12 = x_d+x_t+(x_l/2)                                     // Reactance b/w bus 1 & 2(p.u)
y_12 = 1/x_12                                              // Admittance b/w bus 1 & 2(p.u)
y_21 = y_12                                                // Admittance b/w bus 2 & 1(p.u)
y_10 = 0.0                                                 // Admittance b/w bus 1 & 0(p.u)
y_20 = 0.0                                                 // Admittance b/w bus 2 & 0(p.u)
Y_11 = y_12+y_10                                           // Admittance at bus 1(p.u)
Y_12 = -y_12                                               // Admittance b/w bus 1 & 2(p.u)
Y_21 = -y_12                                               // Admittance b/w bus 2 & 1(p.u)
Y_22 = y_21+y_20                                           // Admittance at bus 2(p.u)
x_32 = x_t+(x_l/2)                                         // Reactance b/w bus 3 & 1(p.u)
theta_t = asind(P_e*abs(x_32)/V_t)                         // Angle(°)
V_t1 = V_t*exp(%i*theta_t*%pi/180)                         // Terminal voltage(p.u)
I = (V_t1-V)/x_32                                          // Current(p.u)
E = V_t1+I*x_d                                             // Alternator voltage(p.u)
sine = poly(0,"sin")
P_e1 = 2.0*abs(E)                                          // Developed power(p.u) in terms of sin δ
P_m_P_e = P_e-P_e1*sine
M = 2*H/(2*%pi*f)                                          // Angular momentum
acc = (P_e-P_e1*sine)*2*%pi*f/(2*H)                        // Acceleration = α (rad/sec^2)

// Results
disp("PART II - EXAMPLE : 10.24 : SOLUTION :-")
printf("\nSwing equation is,  %.4f*α = %.1f - %.3fsin δ\n", M,P_e,P_e1)
printf("\nNOTE: Swing equation is simplified and represented here")
printf("\n      ERROR: x_d = 0.2 p.u, not 0.1 p.u as mentioned in textbook statement")
