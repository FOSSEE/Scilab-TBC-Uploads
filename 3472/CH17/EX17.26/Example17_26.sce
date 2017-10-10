// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 10: POWER SYSTEM STABILITY

// EXAMPLE : 10.26 :
// Page number 308-309
clear ; clc ; close ; // Clear the work space and console

// Given data
X_d = 0.25         // Transient reactance of generator(p.u)
X_t1 = 0.15        // Reactance of transformer(p.u)
X_t2 = 0.15        // Reactance of transformer(p.u)
X_t3 = 0.15        // Reactance of transformer(p.u)
X_t4 = 0.15        // Reactance of transformer(p.u)
X_l1 = 0.20        // Reactance of line(p.u)
X_l2 = 0.20        // Reactance of line(p.u)
X_tr = 0.15        // Reactance of transformer(p.u)
P_m = 1.0          // Power delivered(p.u)
E = 1.20           // Voltage behind transient reactance(p.u)
V = 1.0            // Infinite bus voltage(p.u)

// Calculations
X_14 = X_d+((X_t1+X_t2+X_l1)/2)+X_tr                       // Reactance before fault(p.u)
x_1_b = X_t1+X_t2+X_l1                                     // Reactance(p.u). From figure (b)
x_2_b = X_l2+X_t4                                          // Reactance(p.u). From figure (b)
x_1 = x_1_b*X_t3/(x_1_b+x_2_b+X_t3)                        // Reactance(p.u). From figure (c)
x_2 = x_1_b*x_2_b/(x_1_b+x_2_b+X_t3)                       // Reactance(p.u). From figure (c)
x_3 = X_t3*x_2_b/(x_1_b+x_2_b+X_t3)                        // Reactance(p.u). From figure (c)
X_14_fault = x_1+X_d+x_2+X_tr+((x_1+X_d)*(x_2+X_tr)/x_3)   // Reactance under fault(p.u)
X_14_after_fault = X_d+X_t1+X_l1+X_t2+X_tr                 // Reactance after fault is cleared(p.u)
P_max = V*E/X_14                                           // Maximum power transfer(p.u)
gamma_1 = (V*E/X_14_fault)/P_max                           // γ_1
gamma_2 = (V*E/X_14_after_fault)/P_max                     // γ_2
delta_0 = asin(P_m/P_max)                                  // δ_0(radians)
delta_0_degree = delta_0*180/%pi                           // δ_0(°)
delta_m = %pi-asin(P_m/(gamma_2*P_max))                    // δ_1(radians)
delta_m_degree = delta_m*180/%pi                           // δ_1(°)
delta_c = acosd((P_m/P_max*(delta_m-delta_0)+gamma_2*cos(delta_m)-gamma_1*cos(delta_0))/(gamma_2-gamma_1)) // Clearing angle(°)

// Results
disp("PART II - EXAMPLE : 10.26 : SOLUTION :-")
printf("\nCritical clearing angle, δ_c = %.2f° ", delta_c)
