// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 5: ELECTRIC TRACTION-SPEED TIME CURVES AND MECHANICS OF TRAIN MOVEMENT

// EXAMPLE : 5.10 :
// Page number 784
clear ; clc ; close ; // Clear the work space and console

// Given data
W = 350.0      // Weight of train(tonne)
G = 1.0        // Gradient
alpha = 0.8    // Acceleration(km phps)
u = 0.25       // Co-efficient of adhesion
r = 44.5       // Train resistance(N/tonne)
I = 10.0       // Rotational inertia(%)

// Calculations
W_e = W*(100+I)/100                  // Accelerating weight of train(tonne)
F_t = 277.8*W_e*alpha+W*r+98.1*W*G   // Tractive effort(N)
adhesive_weight = F_t/(u*9.81*1000)  // Adhesive weight(tonnes)

// Results
disp("PART IV - EXAMPLE : 5.10 : SOLUTION :-")
printf("\nMinimum adhesive weight of the locomotive = %.1f tonnes\n", adhesive_weight)
printf("\nNOTE: ERROR: Train resistance is 44.5 N per tonne & not 45 N per tonne as mentioned in textbook problem statement")
