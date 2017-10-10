// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 4: UNSYMMETRICAL FAULTS IN POWER SYSTEMS

// EXAMPLE : 4.9 :
// Page number 519
clear ; clc ; close ; // Clear the work space and console

// Given data
MVA_G = 10.0      // Generator rating(MVA)
kV_G = 11.0       // Generator rating(kV)
X_1_G = 27.0      // Positive sequence reactance of generator(p.u)
X_2_G = 9.0       // Negative sequence reactance of generator(p.u)
X_0_G = 4.5       // Zero sequence reactance of generator(p.u)
X_1_L = 9.0       // Positive sequence reactance of line upto fault(p.u)
X_2_L = 9.0       // Negative sequence reactance of line upto fault(p.u)
X_0_L = 0         // Zero sequence reactance of line upto fault(p.u)

// Calculations
E_a = kV_G*1000/3**0.5          // Phase voltage(V)
Z_1 = %i*(X_1_G+X_1_L)          // Positive sequence reactance(p.u)
Z_2 = %i*(X_2_G+X_2_L)          // Negative sequence reactance(p.u)
I_b = %i*3**0.5*E_a/(Z_1+Z_2)   // Fault current in line b(p.u)
I_c = -I_b                      // Fault current in line c(p.u)

// Results
disp("PART III - EXAMPLE : 4.9 : SOLUTION :-")
printf("\nFault current in line b, I_b = %.f A", abs(I_b))
printf("\nFault current in line c, I_c = %.f A", real(I_c))
