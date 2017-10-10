// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 10: POWER SYSTEM STABILITY

// EXAMPLE : 10.30 :
// Page number 310-311
clear ; clc ; close ; // Clear the work space and console

// Given data
f = 60.0          // Frequency(Hz)
P = 6.0           // Number of poles
H = 4.0           // Inertia constant(p.u)
P_e = 1.0         // Power supplied by generator(p.u)
E = 1.2           // Internal voltage(p.u)
V = 1.0           // Infinite bus voltage(p.u)
X = 0.3           // Line reactance(p.u)
del_t = 0.05      // Δt = Interval step size(sec)

// Calculations
P_max = E*V/X                                // Maximum power(p.u)
delta_0 = asind(P_e/P_max)                   // δ_0(°)
G = P_e
M = G*H/(180*f)                              // Angular momentum(p.u)
P_a_0 = 1.0/2*(P_e-0)                        // (p.u)
alpha_0 = P_a_0/M                            // α_0(°/sec^2)
del_w_r_1 = alpha_0*del_t                    // Δω_r_1(°/sec)
w_r_1 = 0+del_w_r_1                          // ω_r_1(°/sec)
del_delta_1 = w_r_1*del_t                    // Δδ_1(°)
delta_1 = delta_0+del_delta_1                // δ_1(°)
P_a_1 = 1.0*(P_e-0)                          // (p.u)
alpha_1 = P_a_1/M                            // α_1(°/sec^2)
del_w_r_2 = alpha_1*del_t                    // Δω_r_2(°/sec)
w_r_2 = del_w_r_1+del_w_r_2                  // ω_r_2(°/sec)
del_delta_2 = w_r_2*del_t                    // Δδ_2(°)
delta_2 = delta_1+del_delta_2                // δ_2(°)
del_w_r_3 = del_w_r_2                        // Δω_r_3(°/sec)
w_r_3 = w_r_2+del_w_r_3                      // ω_r_3(°/sec)
del_delta_3 = w_r_3*del_t                    // Δδ_3(°)
delta_3 = delta_2+del_delta_3                // δ_3(°)
del_w_r_4 = del_w_r_2                        // Δω_r_4(°/sec)
w_r_4 = w_r_3+del_w_r_4                      // ω_r_4(°/sec)
del_delta_4 = w_r_4*del_t                    // Δδ_4(°)
delta_4 = delta_3+del_delta_4                // δ_4(°)
del_w_r_5 = del_w_r_2                        // Δω_r_5(°/sec)
w_r_5 = w_r_4+del_w_r_5                      // ω_r_5(°/sec)
del_delta_5 = w_r_5*del_t                    // Δδ_5(°)
delta_5 = delta_4+del_delta_5                // δ_5(°)

// Results
disp("PART II - EXAMPLE : 10.30 : SOLUTION :-")
printf("\nPower angle, δ_0 = %.2f° ", delta_0)
printf("\nValue of δ vs t are:")
printf("\n_________________________")
printf("\n  t(Sec)   :   δ(degree)")
printf("\n_________________________")
printf("\n   %.1f     :    %.2f°", 0,delta_0)
printf("\n   %.2f    :    %.2f°", (del_t),delta_1)
printf("\n   %.2f    :    %.2f°", (del_t+del_t),delta_2)
printf("\n   %.2f    :    %.2f°", (del_t*3),delta_3)
printf("\n   %.2f    :    %.2f°", (del_t*4),delta_4)
printf("\n   %.2f    :    %.2f°", (del_t*5),delta_5)
printf("\n_________________________")
