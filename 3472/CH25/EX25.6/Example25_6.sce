// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 18: POWER DISTRIBUTION SYSTEMS

// EXAMPLE : 18.6 :
// Page number 440-441
clear ; clc ; close ; // Clear the work space and console

// Given data
l_AB = 100.0         // Length between A & B(m)
l_BC = 150.0         // Length between B & C(m)
l_CD = 200.0         // Length between C & D(m)
l_AD = 350.0         // Length between A & D(m)
l_AE = 200.0         // Length between A & E(m)
l_ED = 250.0         // Length between E & D(m)
I_B = 10.0           // Current at B(A)
I_C = 20.0           // Current at C(A)
I_D = 50.0           // Current at D(A)
I_E = 39.0           // Current at E(A)

// Calculations
x = poly(0,"x")                                                     // Current in section AB(A)
ABCDEA = x*l_AB+(x-I_B)*l_BC+(x-I_B-I_C)*l_CD+(x-I_B-I_C-I_D)*l_ED+(x-I_B-I_C-I_D-I_E)*l_AE   // KVL around loop ABCDEA
x_sol = roots(ABCDEA)                                               // Current in section AB(A)
V_AD = x_sol*l_AB+(x_sol-I_B)*l_BC+(x_sol-I_B-I_C)*l_CD             // Voltage drop from A to D in terms of ρ/a_1(V)
R_AD = (l_AB+l_BC+l_CD)*(l_AE+l_ED)/(l_AB+l_BC+l_CD+l_AE+l_ED)      // Resistance of n/w across terminals AD in terms of ρ/a
I_AD = V_AD/(R_AD+l_AD)                                             // Current in interconnector AD(A)
V_A_D = I_AD*l_AD                                                   // Voltage drop between A & D in terms of ρ/a_2
a2_a1 = V_A_D/V_AD
length_with = (l_AB+l_BC+l_CD+l_AE+l_ED+l_AD)                       // Length of conductor with interconnector(m)
length_without = (l_AB+l_BC+l_CD+l_AE+l_ED)                         // Length of conductor without interconnector(m)
volume_with = a2_a1*length_with/length_without                      // Weight of copper with interconnector

// Results
disp("PART II - EXAMPLE : 18.6 : SOLUTION :-")
printf("\nRatio of weight of copper with & without interconnector = %.3f : 1 (or) 1 : %.2f", volume_with,1/volume_with)
