// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 18: POWER DISTRIBUTION SYSTEMS

// EXAMPLE : 18.2 :
// Page number 437-438
clear ; clc ; close ; // Clear the work space and console

// Given data
I = 600.0         // Constant current drawn(A)
D = 8.0           // Distance b/w two sub-stations(km)
V_A = 575.0       // Potential at point A(V)
V_B = 590.0       // Potential at point B(V)
R = 0.04          // Track resistance(ohm/km)

// Calculations
x = poly(0,'x')                               // x(km)
I_A = ((-V_B+R*I*D+V_A)-(R*I)*x)/(D*R)        // Simplifying
V_P = V_A-I_A*R*x                             // Potential at P in terms of x(V)
dVP_dx = derivat(V_P)                         // dV_P/dx
x_sol = roots(dVP_dx)                         // Value of x(km)
I_A_1 = ((-V_B+R*I*D+V_A)-(R*I)*x_sol)/(D*R)  // Current drawn from end A(A)
I_B = I-I_A_1                                 // Current drawn from end B(A)

// Results
disp("PART II - EXAMPLE : 18.2 : SOLUTION :-")
printf("\nPoint of minimum potential along the track, x = %.2f km", x_sol)
printf("\nCurrent supplied by station A, I_A = %.f A", I_A_1)
printf("\nCurrent supplied by station B, I_B = %.f A \n", I_B)
printf("\nNOTE: ERROR: Calculation mistake in the textbook solution")
