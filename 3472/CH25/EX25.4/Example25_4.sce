// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 18: POWER DISTRIBUTION SYSTEMS

// EXAMPLE : 18.4 :
// Page number 439
clear ; clc ; close ; // Clear the work space and console

// Given data
l = 450.0          // Length of wire(m)
V_A = 250.0        // Voltage at end A(V)
V_B = 250.0        // Voltage at end A(V)
r = 0.05           // Conductor resistance(ohm/km)
i = 1.5            // Load(A/m)
I_C = 20.0         // Current at C(A)
l_C = 60.0         // Distance to C from A(m)
I_D = 40.0         // Current at D(A)
l_D = 100.0        // Distance to D from A(m)
l_E = 200.0        // Distance to E from A(m)

// Calculations
x = poly(0,"x")                                  // Current to point D from end A(A)
AD = (I_C+x)*r*l_C+x*r*(l_D-l_C)                 // Drop in length AD
BD = (i*r*V_A**2/2)+(I_D-x)*r*(450-l_D)          // Drop in length BD
x_sol = roots(AD-BD)                             // Current(A)
I_F = x_sol-I_D                                  // Current supplied to load from end A(A)
l_F = l_E+(I_F/i)                                // Point of minimum potential at F from A(m)
V_F = V_B-(375.0-I_F)*(250-(l_F-200))*r/1000     // Potential at F from end B(V)

// Results
disp("PART II - EXAMPLE : 18.4 : SOLUTION :-")
printf("\nPoint of minimum potential occurs at F from A = %.2f metres", l_F)
printf("\nPotential at point F = %.2f V", V_F)
