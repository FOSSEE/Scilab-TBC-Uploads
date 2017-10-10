// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART III : SWITCHGEAR AND PROTECTION
// CHAPTER 2: FAULT LIMITING REACTORS

// EXAMPLE : 2.2 :
// Page number 480
clear ; clc ; close ; // Clear the work space and console

// Given data
X = 10.0        // Reactance of reactor(%)
kVA = 30000.0   // Rating of generator(kVA)
X_sc = 20.0     // Short-circuit reactance(%)

// Calculations
X_1 = 1.0/3*(X_sc+X)           // Combined reactance of generator A,B,C & associated reactors(%)
X_2 = X_1+X                    // Combined reactance upto fault(%)
X_total_a = X_2/2.0            // Total reactance upto fault(%)
kVA_SC_a = 100/X_total_a*kVA   // Short-circuit kVA(kVA)
X_total_b = 1.0/4*X_sc         // Total reactance upto fault when E,F,G & H are short-circuited(%)
kVA_SC_b = 100/X_total_b*kVA   // Short-circuit kVA(kVA)

// Results
disp("PART III - EXAMPLE : 2.2 : SOLUTION :-")
printf("\nCase(a): kVA developed under short-circuit when reactors are in circuit = %.f kVA", kVA_SC_a)
printf("\nCase(b): kVA developed under short-circuit when reactors are short-circuited = %.f kVA", kVA_SC_b)
