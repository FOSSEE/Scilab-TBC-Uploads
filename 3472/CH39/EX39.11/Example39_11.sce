// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.11 :
// Page number 687
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 220.0       // DC series motor voltage(V)
I_1 = 20.0      // Armature current at 800rpm(A)
N_1 = 800.0     // Speed of dc series motor(rpm)
R_div = 0.4     // Diverter resistance(ohm)
R_a = 0.5       // Armature resistance(ohm)
R_f = 0.2       // Series field resistance(ohm)

// Calculations
E_b1 = V-(R_a+R_f)*I_1          // Back emf at 800 rpm(V)
I_2 = I_1*R_div/(R_div+R_f)     // Series field current at new speed(A)
E_b2 = V-(R_a*I_1+R_f*I_2)      // Back emf at new speed(V)
N_2 = I_1*N_1*E_b2/(I_2*E_b1)   // New speed with diverter(rpm)

// Results
disp("PART IV - EXAMPLE : 1.11 : SOLUTION :-")
printf("\nSpeed of motor with a diverter connected in parallel with series field, N_2 = %.f rpm", N_2)
