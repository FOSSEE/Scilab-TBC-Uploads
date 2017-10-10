// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 5: ELECTRIC TRACTION-SPEED TIME CURVES AND MECHANICS OF TRAIN MOVEMENT

// EXAMPLE : 5.12 :
// Page number 784-785
clear ; clc ; close ; // Clear the work space and console

// Given data
W = 200.0       // Trailing weight(tonne)
G = 1.0         // Gradient(%)
alpha = 1.0     // Acceleration(km phps)
u = 0.2         // Co-efficient of adhesion
r = 50.0        // Train resistance(N/tonne)
I = 10.0        // Rotational inertia(%)

// Calculations
W_L = ((277.8*(100+I)/100*alpha)+98.1*G+r)*W/(u*9.81*1000-((277.8*(100+I)/100*alpha)+98.1*G+r))  // Weight of locomotive(tonnes)

// Results
disp("PART IV - EXAMPLE : 5.12 : SOLUTION :-")
printf("\nMinimum adhesive weight of a locomotive, W_L = %.1f tonnes\n", W_L)
printf("\nNOTE: ERROR: Calculation mistake in textbook solution in calculating W_L")
