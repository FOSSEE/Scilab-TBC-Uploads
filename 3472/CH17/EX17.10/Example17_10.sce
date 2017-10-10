// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 10: POWER SYSTEM STABILITY

// EXAMPLE : 10.10 :
// Page number 275-276
clear ; clc ; close ; // Clear the work space and console

// Given data
E_1 = 1.1      // Sending end voltage(p.u)
x_d1 = 1.0     // Reactance(p.u)
x_T1 = 0.1     // Reactance(p.u)
x_l1 = 0.4     // Reactance(p.u)
x_l2 = 0.4     // Reactance(p.u)
x_T2 = 0.1     // Reactance(p.u)
E_2 = 1.0      // Receiving end voltage(p.u)
x_d2 = 1.0     // Reactance(p.u)
x_L = 1.0      // Shunt inductor reactance(p.u)
x_C = 1.0      // Static capacitor reactance(p.u)
delta = 30.0   // δ(°)

// Calculations
// Case(a)
Z_1_a = x_d1+x_T1+(x_l1/2.0)                            // Reactance(p.u)
X_1_a = %i*Z_1_a
Z_2_a = x_T2+x_d2                                       // Reactance(p.u)
X_2_a = %i*Z_2_a
Z_3_a = -x_C                                            // Reactance(p.u)
X_3_a = %i*Z_3_a
X_a = X_1_a+X_2_a+(X_1_a*X_2_a/X_3_a)                   // Transfer reactance(p.u)
P_max_a = E_1*E_2/abs(X_a)                              // Maximum steady state power if static capacitor is connected(p.u)
P_a = P_max_a*sind(delta)                               // Value of P(p.u)
Q_a = (E_1*E_2/abs(X_a))*cosd(delta)-(E_2**2/abs(X_a))  // Value of Q(p.u)
// Case(b)
Z_1_b = x_d1+x_T1+(x_l1/2.0)                            // Reactance(p.u)
X_1_b = %i*Z_1_b
Z_2_b = x_T2+x_d2                                       // Reactance(p.u)
X_2_b = %i*Z_2_b
Z_3_b = x_L                                             // Reactance(p.u)
X_3_b = %i*Z_3_b
X_b = X_1_b+X_2_b+(X_1_b*X_2_b/X_3_b)                   // Transfer reactance(p.u)
P_max_b = E_1*E_2/abs(X_b)                              // Maximum steady state power if static capacitor is replaced by an inductive reactor(p.u)
P_b = P_max_b*sind(delta)                               // Value of P(p.u)
Q_b = (E_1*E_2/abs(X_b))*cosd(delta)-(E_2**2/abs(X_b))  // Value of Q(p.u)

// Results
disp("PART II - EXAMPLE : 10.10 : SOLUTION :-")
printf("\nCase(a): Maximum steady state power if static capacitor is connected, P_max = %.3f p.u", P_max_a)
printf("\n         Value of P = %.3f p.u", P_a)
printf("\n         Value of Q = %.3f p.u", Q_a)
printf("\nCase(b): Maximum steady state power if static capacitor is replaced by an inductive reactor, P_max = %.3f p.u", P_max_b)
printf("\n         Value of P = %.3f p.u", P_b)
printf("\n         Value of Q = %.4f p.u", Q_b)
