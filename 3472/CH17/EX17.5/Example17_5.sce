// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 10: POWER SYSTEM STABILITY

// EXAMPLE : 10.5 :
// Page number 271-272
clear ; clc ; close ; // Clear the work space and console

// Given data
V_A = 1.0          // Voltage at bus A(p.u)
Z_AB = %i*0.5      // Impedance(p.u)
S_DA = 1.0         // p.u
S_DB = 1.0         // p.u
V_B = 1.0          // Voltage at bus B(p.u)

// Calculations
// Case(i) & (ii)
X = abs(Z_AB)                                 // Reactance(p.u)
sin_delta = 1.0*X/(V_A*V_B)                   // Sin δ
delta = asind(sin_delta)                      // δ(°)
V_2 = V_B
V_1 = V_A
Q_gB = (V_2**2/X)-(V_2*V_1*cosd(delta)/X)
// Case(iii)
V_2_3 = 1/2.0**0.5                            // Solving quadratic equation from textbook
delta_3 = acosd(V_2_3)                        // δ(°)

// Results
disp("PART II - EXAMPLE : 10.5 : SOLUTION :-")
printf("\nCase(i)  : Q_gB = %.3f", Q_gB)
printf("\nCase(ii) : Phase angle of V_B, δ = %.f° ", delta)
printf("\nCase(iii): If Q_gB is equal to zero then amount of power transmitted is, V_2 = %.3f∠%.f° ", V_2_3,delta_3)
